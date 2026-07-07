# QuantTools Local Deployment Pattern

This example shows how CloudInfra can model a local-first deployment surface for a data-validation workload without committing cloud account details or secrets.

## Purpose

Use this pattern when a project needs to move from repository proof to deployable shape:

- containerized validation worker
- config map for non-secret runtime settings
- secret references by name only
- local dry-run validation before any cloud apply

## Included Manifests

| File | Purpose |
| --- | --- |
| `namespace.yaml` | isolated local namespace |
| `configmap.yaml` | non-secret QuantTools runtime settings |
| `deployment.yaml` | validation worker deployment shape |

## Safety Boundary

- No cloud backend is configured.
- No secret values are committed.
- No broker, paid data, or trading actions are represented.
- Manifests are intended for review and dry-run validation before real environment work.

## Validation

```bash
kubectl apply --dry-run=client -f examples/quanttools-local/
```
