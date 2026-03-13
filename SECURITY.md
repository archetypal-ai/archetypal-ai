# Security Policy

## Reporting a Vulnerability

If you discover a security vulnerability in Archetypal AI, please report it
responsibly.

**Email**: security@archetypal.ai

**Do NOT**:
- Open a public GitHub issue for security vulnerabilities
- Share vulnerability details on Discord or social media
- Exploit the vulnerability beyond what's necessary to demonstrate it

**We will**:
- Acknowledge receipt within 24 hours
- Provide a timeline for a fix within 72 hours
- Credit you in the security advisory (unless you prefer anonymity)

## Supported Versions

| Version | Supported |
|---------|-----------|
| Latest  | ✅        |
| < Latest | ❌       |

We only support the latest release. Update frequently.

## Security Architecture

### Credential Storage
- Auth tokens stored at `~/.archetypal/credentials.json` with UNIX permissions `0600`
- No credentials are transmitted to third parties
- Tokens can be revoked via `archetypal auth logout`

### Local Tool Execution
- Bash tool blocks known dangerous commands (rm -rf /, mkfs, dd, fork bombs)
- Permission modes restrict what the agent can execute:
  - `plan`: Read-only. No writes, no bash.
  - `auto`: Writes and bash with smart approval.
  - `full`: Unrestricted local execution.

### Network Security
- All API communication over HTTPS/TLS
- Bearer token authentication on every request
- No data is sent to third-party services

### Agent Isolation
- Each agent runs in its own Durable Object with isolated SQLite storage
- Agents cannot access other users' data without explicit `civilization` visibility
- Agent heartbeats run on Workers AI (no data leaves Cloudflare infrastructure)
