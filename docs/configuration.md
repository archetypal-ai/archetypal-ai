# Configuration

## Config Directory

All configuration is stored at `~/.archetypal/`:

```
~/.archetypal/
├── config.json          # Settings
├── credentials.json     # Auth (mode 0600)
└── memory/
    └── MEMORY.md        # Persistent agent memory
```

## config.json

```json
{
  "apiUrl": "https://jarvis-api-gateway.ben-c1f.workers.dev",
  "authToken": null,
  "userId": null,
  "defaultTier": "edge",
  "defaultArchetype": "auto",
  "permissionMode": "auto",
  "activeAgentId": null
}
```

| Field | Type | Description |
|-------|------|-------------|
| `apiUrl` | string | Civilization API endpoint |
| `defaultTier` | `edge` \| `mid` \| `frontier` | Default inference tier |
| `defaultArchetype` | string \| `auto` | Default archetype for new agents |
| `permissionMode` | `plan` \| `auto` \| `full` | Default permission mode |
| `activeAgentId` | string \| null | Resume existing agent session |

## ARCHETYPAL.md

Create an `ARCHETYPAL.md` file in your project root to give your agent
project-specific instructions. This is loaded at the start of every session.

Supported filenames (checked in order):
- `ARCHETYPAL.md`
- `archetypal.md`
- `.archetypal.md`

## Environment Variables

| Variable | Description |
|----------|-------------|
| `ARCHETYPAL_API_URL` | Override API endpoint |
| `ARCHETYPAL_TIER` | Default inference tier |
| `ARCHETYPAL_MODE` | Default permission mode |

## Persistent Memory

Agent memory persists at `~/.archetypal/memory/MEMORY.md`. This file is
loaded into the agent's context at session start and updated as the agent
learns across sessions.
