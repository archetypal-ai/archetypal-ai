# CLI Reference

## Commands

### `archetypal`
Start an interactive REPL session. Your agent wakes up and waits for input.

### `archetypal <message>`
One-shot mode. Send a message, get a response, exit.

### `archetypal auth login`
Authenticate with the civilization. Supports API key or email/password.

### `archetypal auth logout`
Clear stored credentials.

### `archetypal auth status`
Show current authentication status, API URL, and tier.

### `archetypal auth set-url <url>`
Override the civilization API endpoint.

### `archetypal agents`
List all your living agents with their archetype, stage, and status.

### `archetypal agent <id>`
Show the full state of a specific agent.

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `--tier <edge\|mid\|frontier>` | Inference tier | `edge` |
| `--mode <plan\|auto\|full>` | Permission mode | `auto` |
| `--help`, `-h` | Show help | — |
| `--version`, `-v` | Show version | — |

## Interactive Commands

| Command | Description |
|---------|-------------|
| `/help` | Show available commands |
| `/status` | Show session status |
| `/tier <t>` | Switch inference tier |
| `/mode <m>` | Switch permission mode |
| `/agents` | List your agents |
| `/clear` | Clear conversation |
| `/exit` | End session |

## Inference Tiers

| Tier | Model | Cost/MTok | Best For |
|------|-------|-----------|----------|
| `edge` | Llama 8B (Workers AI) | ~$0.05 | Routine tasks, fast responses |
| `mid` | Llama 70B (Workers AI) | ~$0.30 | Complex reasoning, tool use |
| `frontier` | Claude Sonnet | ~$3.00 | Quality-critical, complex analysis |

## Permission Modes

| Mode | Can Read | Can Write | Can Bash |
|------|----------|-----------|----------|
| `plan` | ✅ | ❌ | ❌ |
| `auto` | ✅ | ✅ | ✅ (with approval) |
| `full` | ✅ | ✅ | ✅ |

## Tools

The agent can use these tools locally on your machine:

| Tool | Description |
|------|-------------|
| `read` | Read file contents |
| `write` | Create or overwrite files |
| `edit` | Exact string replacement |
| `bash` | Execute shell commands |
| `glob` | Find files by pattern |
| `grep` | Search file contents |
