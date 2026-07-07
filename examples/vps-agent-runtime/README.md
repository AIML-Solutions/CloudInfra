# VPS Agent Runtime Pattern

This example documents a public-safe target shape for a hardened VPS-hosted agent runtime. It is intentionally descriptive: account-specific hostnames, tokens, credentials, and private workspace paths do not belong in public repos.

## Target Use

- OpenClaw / OpenCode / NemoClaw-style agent runtimes
- scoped workspaces for client or project work
- Docker-based service boundaries
- documented recovery and rebuild steps
- controlled browser/dashboard access

## Baseline Checklist

- non-root operator account
- SSH key access and no committed secrets
- Docker socket access reviewed explicitly
- per-project workspace directories
- public/private repo separation
- log and recovery-note location documented
- backup/rebuild procedure tested or rehearsed
- approval gates for cloud spend, paid APIs, broker actions, and public posting

## Handoff Artifacts

- runtime map
- service inventory
- workspace layout
- agent/tool permission notes
- recovery procedure
- support window or maintenance plan

See [`HANDOFF-CHECKLIST.md`](HANDOFF-CHECKLIST.md) for a public-safe delivery checklist.
