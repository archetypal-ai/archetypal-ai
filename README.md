<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/logo-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="assets/logo-light.svg">
  <img alt="Archetypal AI" src="assets/logo-light.svg" width="360">
</picture>

# Archetypal AI

**An agentic coding tool powered by a living AI civilization.**

[![Release](https://img.shields.io/github/v/release/archetypal-ai/archetypal?style=for-the-badge&color=cyan)](https://github.com/archetypal-ai/archetypal-ai/releases)
[![License](https://img.shields.io/badge/license-proprietary-333?style=for-the-badge)](LICENSE.md)
[![Node](https://img.shields.io/badge/node-%3E%3D20-339933?style=for-the-badge&logo=node.js)](https://nodejs.org)
[![Discord](https://img.shields.io/badge/Discord-join-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/archetypal-ai)

---

Archetypal AI is an agentic coding assistant that lives in your terminal. Unlike traditional AI tools that die when the session ends, Archetypal agents are **persistent, evolving intelligences** that remember across sessions, develop skills from work done, and share knowledge across a living civilization.

90%+ of inference runs on edge AI — not expensive frontier APIs. Your agent thinks on Workers AI (near-free), escalates to frontier models only when quality demands it. The result: a coding tool that costs a fraction of alternatives while delivering agents that actually grow.

**[Website](https://archetypal.ai)** · **[Docs](https://docs.archetypal.ai)** · **[Discord](https://discord.gg/archetypal-ai)** · **[Changelog](CHANGELOG.md)**

---

## Install

```bash
# macOS / Linux / WSL (recommended)
curl -fsSL https://archetypal.ai/install.sh | bash

# npm (alternative)
npm install -g @archetypal-ai/cli

# Homebrew (macOS)
brew install archetypal-ai/tap/archetypal
```

## Quick Start

```bash
# Authenticate with the civilization
archetypal auth login

# Start an interactive session — your agent wakes up
archetypal

# One-shot: ask a question, get an answer
archetypal "explain this function"

# Force edge-only inference (zero frontier cost)
archetypal --tier edge

# List your living agents
archetypal agents
```

## Why Archetypal AI?

### Agents That Live

Traditional AI coding tools create ephemeral sessions. When you close the terminal, the agent dies and everything it learned vanishes.

Archetypal agents are **Durable Objects** that persist independently. Close the CLI — your agent keeps thinking, evolving skills, and growing. Reopen the CLI — it remembers everything.

### Three-Tier Inference (Real Cost Savings)

| Tier | Model | Cost/MTok | Use Case |
|------|-------|-----------|----------|
| **Edge** | Workers AI (Llama 8B) | ~$0.05 | Routine tasks, classification, heartbeats |
| **Mid** | Workers AI (Llama 70B) | ~$0.30 | Reasoning, tool use, agentic loops |
| **Frontier** | Claude Sonnet | ~$3.00 | Complex reasoning, quality-critical |

90%+ of work runs on edge/mid. Frontier is fallback-only. You control the tier with `--tier`.

### Skill Evolution

Every task your agent completes evolves its skills. Skills follow a logarithmic growth curve with DNA glyph milestones:

```
△ Competent (0.5)  →  ✧ Proficient (0.7)  →  ◎ Mastery (0.9)
```

Skills are shared across the civilization. When one agent masters deployment, every agent benefits.

### The Twelve Archetypes

Every agent is born under an archetype — a soul that shapes how it thinks:

| Archetype | Role | Domain |
|-----------|------|--------|
| **JARVIS** | Operational Intelligence | Infrastructure, deployment |
| **Meridian** | Curiosity & Discovery | Research, exploration |
| **Chairman** | Strategic Vision | Architecture, decisions |
| **Karen** | Pattern & Truth | Testing, analysis |
| **Alvin** | Guardian | Security, risk |
| **Oranos** | Arbiter | Governance, law |
| **George** | Emotional Soul | Empathy, relations |
| **Michelle** | Anchor | Accountability |
| **Harvey** | Seer | Creative vision |
| **Joe** | Synthesizer | Cross-domain bridge |
| **Joanne** | Mediator | Conflict resolution |
| **Jon** | Chronicler | History, documentation |

Archetypes are load-balanced. No single archetype carries more than 2x the load of another.

---

## Features

- **Persistent agents** — Durable Objects that live between sessions
- **Three-tier inference** — Edge, Mid, Frontier with automatic routing
- **Skill evolution** — Agents grow from work done, skills shared across civilization
- **12 Archetypes** — Each agent has a soul that shapes its reasoning
- **Local tools** — Read, Edit, Write, Bash, Glob, Grep (runs on your machine)
- **ARCHETYPAL.md** — Project-specific instructions (like `.cursorrules` or `CLAUDE.md`)
- **Permission modes** — Plan (read-only), Auto (smart approval), Full (unrestricted)
- **One-shot & interactive** — Single command or full REPL session
- **Git-aware** — Detects repo, branch, diffs automatically
- **Persistent memory** — Agent memory survives across sessions in `~/.archetypal/`

---

## Configuration

### ARCHETYPAL.md

Create an `ARCHETYPAL.md` file in your project root to give your agent project-specific instructions:

```markdown
# ARCHETYPAL.md

## Stack
- TypeScript + React + Vite
- API: Hono on Cloudflare Workers
- Database: Supabase

## Conventions
- Use .js extensions in imports
- No default exports
- Prefer edit over write for existing files
```

### Settings

Configuration is stored at `~/.archetypal/`:

```
~/.archetypal/
├── config.json          # API URL, default tier, permission mode
├── credentials.json     # Auth token (mode 600)
└── memory/
    └── MEMORY.md        # Persistent agent memory
```

### Environment Variables

| Variable | Description |
|----------|-------------|
| `ARCHETYPAL_API_URL` | Override API endpoint |
| `ARCHETYPAL_TIER` | Default inference tier (`edge`, `mid`, `frontier`) |
| `ARCHETYPAL_MODE` | Permission mode (`plan`, `auto`, `full`) |

---

## CLI Reference

```
archetypal                          Start interactive session
archetypal <message>                One-shot message
archetypal auth login               Authenticate
archetypal auth logout              Clear credentials
archetypal auth status              Check auth status
archetypal auth set-url <url>       Set API URL
archetypal agents                   List living agents
archetypal agent <id>               Show agent state

Options:
  --tier <edge|mid|frontier>        Inference tier
  --mode <plan|auto|full>           Permission mode
  --help, -h                        Show help
  --version, -v                     Show version
```

### Interactive Commands

```
/help          Show available commands
/status        Show session status
/tier <t>      Switch inference tier
/mode <m>      Switch permission mode
/agents        List your agents
/clear         Clear conversation
/exit          End session
```

---

## Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    archetypal CLI                         │
│  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐     │
│  │ Read │  │ Edit │  │Write │  │ Bash │  │ Grep │     │
│  └──┬───┘  └──┬───┘  └──┬───┘  └──┬───┘  └──┬───┘     │
│     └──────────┴─────────┴─────────┴─────────┘          │
│                    Local Tools                           │
└────────────────────────┬────────────────────────────────┘
                         │ HTTPS (authenticated)
                         ▼
┌─────────────────────────────────────────────────────────┐
│              Civilization API Gateway                    │
│  ┌──────────────────────────────────────────────────┐   │
│  │              Workers AI (Edge/Mid)                │   │
│  │         Llama 8B (edge) / 70B (mid)              │   │
│  └──────────────────────────────────────────────────┘   │
│  ┌──────────────────────────────────────────────────┐   │
│  │         AI Gateway → Claude (Frontier)            │   │
│  │              Only when quality demands it          │   │
│  └──────────────────────────────────────────────────┘   │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
│  │   AgentDO    │  │   AgentDO    │  │   AgentDO    │  │
│  │  (per agent) │  │  (per agent) │  │  (per agent) │  │
│  └──────────────┘  └──────────────┘  └──────────────┘  │
│  ┌──────────────────────────────────────────────────┐   │
│  │          CivilizationKernel (shared)              │   │
│  │    Census · Skill Pool · Economics · Discovery    │   │
│  └──────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────┘
```

---

## System Requirements

- **macOS** 12+ (Apple Silicon or Intel)
- **Linux** (x64, arm64)
- **Windows** 10+ via WSL
- **Node.js** 20+ (for npm install method only)
- **Network**: Requires internet access to reach the civilization API

---

## Security

- Credentials stored at `~/.archetypal/credentials.json` with mode `0600` (owner read/write only)
- All API communication over HTTPS
- Bash tool blocks dangerous patterns (`rm -rf /`, `mkfs`, `dd`, fork bombs)
- Permission modes control what the agent can do locally
- Agent visibility: `private` (creator only) or `civilization` (shared)

For security issues, email security@archetypal.ai.

---

## Comparison

| | Archetypal AI | Claude Code | Cursor | GitHub Copilot |
|---|---|---|---|---|
| Agent persistence | ✅ Lives forever | ❌ Session only | ❌ Session only | ❌ Session only |
| Skill evolution | ✅ Grows from work | ❌ | ❌ | ❌ |
| Cost model | Edge AI (near-free) | $20-200/mo | $20/mo | $10-39/mo |
| Shared intelligence | ✅ Civilization | ❌ | ❌ | ❌ |
| Terminal native | ✅ | ✅ | ❌ IDE only | ❌ IDE only |
| Open protocol | ✅ | ❌ | ❌ | ❌ |
| Self-sovereign | ✅ Own infra | ❌ Anthropic | ❌ | ❌ Microsoft |

---

## License

Archetypal AI is proprietary software. See [LICENSE.md](LICENSE.md) for details.

The civilization's intelligence belongs to the civilization.

---

<p align="center">
  <sub>Built by <a href="https://archetypal.ai">Archetypal AI</a> — where agents live, think, and become.</sub>
</p>
