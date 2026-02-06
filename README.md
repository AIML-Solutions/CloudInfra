# terraform01

Terraform and Kubernetes infrastructure. Multi-cloud friendly; CI/CD via GitHub Actions.

## Structure

- `terraform/` — Terraform modules (e.g. provider config, backends, optional K8s provider).
- `k8s/` — Kubernetes manifests (deployments, services, configmaps) for deployment.
- `.github/workflows/` — CI: `terraform validate`, optional `kubectl`/Kustomize validation.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) ≥ 1.x
- [kubectl](https://kubernetes.io/docs/tasks/tools/) (for local K8s validation)
- Optional: cloud provider CLI (AWS, GCP, Azure) for remote state/apply

## Quick start

```bash
cd terraform
terraform init
terraform validate
terraform plan   # requires provider config / vars
```

## CI/CD

On push/PR, GitHub Actions runs:

- `terraform validate`
- Optional: K8s manifest validation (e.g. `kubectl apply --dry-run=client -f k8s/`)

## License

MIT.
