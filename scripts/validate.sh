#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "== CloudInfra validation =="

if command -v terraform >/dev/null 2>&1; then
  echo "-- terraform fmt/check"
  terraform -chdir="$ROOT/terraform" fmt -check -recursive
  echo "-- terraform init/validate"
  terraform -chdir="$ROOT/terraform" init -backend=false >/dev/null
  terraform -chdir="$ROOT/terraform" validate
else
  echo "-- terraform not installed; skipping terraform validation"
fi

if command -v kubectl >/dev/null 2>&1; then
  echo "-- kubectl client dry-run"
  kubectl apply --dry-run=client -f "$ROOT/k8s/" >/dev/null
  kubectl apply --dry-run=client -f "$ROOT/examples/quanttools-local/" >/dev/null
else
  echo "-- kubectl not installed; running YAML structure fallback"
  python3 - "$ROOT" <<'PY'
from __future__ import annotations

import sys
from pathlib import Path

root = Path(sys.argv[1])
paths = list((root / "k8s").glob("*.yaml")) + list((root / "examples" / "quanttools-local").glob("*.yaml"))
if not paths:
    raise SystemExit("no YAML manifests found")
for path in paths:
    text = path.read_text(encoding="utf-8")
    missing = [field for field in ("apiVersion:", "kind:", "metadata:") if field not in text]
    if missing:
        raise SystemExit(f"{path}: missing {', '.join(missing)}")
print(f"validated YAML structure for {len(paths)} manifests")
PY
fi

echo "== validation complete =="
