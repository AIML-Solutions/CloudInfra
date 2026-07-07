# VPS Agent Runtime Handoff Checklist

Public-safe checklist for handing off a hosted agent runtime. Client-specific hostnames, credentials, account IDs, and private paths should stay in private delivery docs.

## Runtime Inventory

- host provider and region documented privately
- operating system and package manager noted
- non-root operator account confirmed
- SSH access method documented without secrets
- Docker/container services listed
- dashboard or control UI access path documented privately

## Workspace Boundaries

- public repos separated from private client workspaces
- generated artifacts separated from source files
- per-project directories named clearly
- secrets excluded from repos and logs
- destructive actions approval-gated

## Operations

- restart procedure documented
- log location documented
- disk check command documented
- backup/recovery procedure documented
- update procedure documented
- stale session/process cleanup procedure documented if applicable

## Security And Cost Boundaries

- no root passwords sent over chat
- temporary keys rotated or removed after delivery when appropriate
- cloud spend approval boundary documented
- paid API approval boundary documented
- outbound messaging/public posting boundary documented
- live financial/broker actions excluded unless separately approved in writing

## Handoff Call

- client walks through restart/check procedure
- client confirms where handoff docs are stored
- remaining risks and optional support are reviewed
