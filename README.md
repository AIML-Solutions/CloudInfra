# CloudInfra

Infrastructure-as-code lane for AIML Solutions cloud environments, Kubernetes manifests, validation checks, and deployment automation.

## What This Repository Demonstrates

- Terraform module organization and validation workflow
- Kubernetes deployment/service/config patterns
- CI/CD readiness with GitHub Actions
- Multi-cloud conversation surface for AWS, GCP, and Azure
- Practical DevOps evidence aligned with Kubernetes and AWS platform engineering

## Structure

| Path | Purpose |
| --- | --- |
| `terraform/` | Terraform modules, provider config, and backend scaffolding |
| `k8s/` | Kubernetes manifests for deployment validation |
| `.github/workflows/` | CI checks such as `terraform validate` and manifest validation |

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

## How It Fits MultiClaw

CloudInfra supports the cloud and platform lane behind MultiClaw. Examples should demonstrate repeatable environments, safe defaults, and validation discipline with generic, reusable infrastructure patterns.

## Next Improvements

- Add an AWS-focused example aligned with CLF-C02 and associate-level study
- Add Kubernetes examples aligned with CKAD/KCNA practice
- Add remote state documentation without committing real backend secrets
- Add CI badge after confirming the workflow name and branch

## License

MIT.
