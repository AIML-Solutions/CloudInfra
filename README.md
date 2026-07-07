# CloudInfra

Infrastructure-as-code lane for AIML Solutions cloud environments, Kubernetes manifests, validation checks, and deployment automation.

CloudInfra is intentionally local-first: it demonstrates platform-engineering discipline without committing account-specific backends, secrets, or cloud spend assumptions.

## Who This Is For

- Hiring teams evaluating AWS, Kubernetes, Terraform, and platform-engineering fundamentals
- Clients who need safe IaC scaffolding before real cloud applies
- Engineers who want repeatable validation patterns without leaking credentials or environment-specific state

## What This Repository Demonstrates

- Terraform module organization and validation workflow
- Kubernetes deployment/service/config patterns
- CI/CD readiness with GitHub Actions
- Cloud-cost and secret-boundary discipline
- Practical DevOps evidence aligned with Kubernetes, AWS platform engineering, and AI/data workloads

## Structure

| Path | Purpose |
| --- | --- |
| `terraform/` | Terraform modules, provider config, and backend scaffolding |
| `k8s/` | Kubernetes manifests for deployment validation |
| `examples/quanttools-local/` | local-first data-validation worker deployment pattern |
| `examples/vps-agent-runtime/` | public-safe VPS agent runtime checklist |
| `examples/mac-mini-agent-runtime/` | local-first Mac mini agent runtime pattern |
| `.github/workflows/` | CI checks such as `terraform validate` and manifest validation |

## Implementation Status

| Area | Status | Notes |
| --- | --- | --- |
| Terraform layout | Active | Reusable module and environment scaffolding is organized under `terraform/` |
| Kubernetes manifests | Active | Deployment/service/config examples live under `k8s/` |
| Validation workflow | Active | GitHub Actions workflow is present for infrastructure checks |
| Cloud applies | Scaffold | Designed for safe local validation first; real remote-state setup should be added per environment |

CloudInfra is a reusable platform-engineering pattern repo. It is intended to demonstrate infrastructure validation discipline without embedding account-specific backend configuration.

## Commercial Use Cases

- Convert prototype AI/data services into deployable container patterns
- Add Terraform/Kubernetes validation before client cloud work
- Create environment templates for agentic data pipelines, evaluation workers, and API services
- Document cloud-readiness without performing unapproved cloud writes

## Prerequisites

- Terraform 1.x+
- `kubectl` for local Kubernetes validation
- Optional cloud provider CLI for remote state and real applies

## Quick Start

```bash
cd terraform
terraform init
terraform validate
terraform plan
```

For Kubernetes manifest validation:

```bash
kubectl apply --dry-run=client -f k8s/
```

Review the QuantTools local deployment pattern:

```bash
kubectl apply --dry-run=client -f examples/quanttools-local/
```

## How It Fits MultiClaw

CloudInfra supports the cloud and platform lane behind MultiClaw. Examples should demonstrate repeatable environments, safe defaults, and validation discipline with generic, reusable infrastructure patterns.

## Next Improvements

- Add an AWS-focused example aligned with CLF-C02 and associate-level study
- Add Kubernetes examples aligned with CKAD/KCNA practice
- Add remote state documentation without committing real backend secrets
- Add CI badge after confirming the workflow name and branch
- Add a local-first QuantTools deployment example with generated manifests and no secrets

## License

MIT — see [LICENSE](LICENSE).
