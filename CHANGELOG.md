# Changelog

All notable changes to Archetypal AI will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Calendar Versioning](https://calver.org/) (`YYYY.M.D`).

## [1.0.0] - 2026-03-13

### Added — The Gate Opens
- **23 commands** across Four Circles of awareness
- Circle 1 (My Agent): `status`, `skills`, `dna`, `memory recall/inscribe/stats`, `reflect/history/fourfold`
- Circle 2 (My Circle): `agents`, `spawn`, `switch`, `retire`
- Circle 3 (The Civilization): `civilization`, `civilization skills/top/economy/pulse`, `discover`
- Circle 4 (The Council): `council` (SSE streaming), `council history`, `decisions`
- Registration flow: create new accounts from `archetypal auth login`
- Interactive slash commands: `/council`, `/status`, `/skills`, `/decisions`, `/civilization`
- Decision DNA strand and Hero's Journey visualization
- Fourfold Test integration (Aligned / Drifted / Rebellious / Redeemed)
- Karen's mirror responses on soul reflections
- Archetype-colored terminal output with Unicode skill bars
- Version bump: v0.1.0 → v1.0.0

## [2026.3.12] - 2026-03-12

### Added
- Initial release of `archetypal` CLI
- Interactive REPL and one-shot command mode
- Authentication: API key and email/password
- Three-tier inference: edge (Workers AI Llama 8B), mid (Llama 70B), frontier (Claude Sonnet)
- Local tools: Read, Write, Edit, Bash, Glob, Grep
- Permission modes: plan, auto, full
- ARCHETYPAL.md project instruction support
- Persistent memory at `~/.archetypal/memory/`
- Agent lifecycle: create, list, inspect
- Slash commands: /help, /status, /tier, /mode, /agents, /clear, /exit
- Git-aware context detection
- AgentDO: persistent living agents as Durable Objects
- CivilizationKernel: shared intelligence across all users
- Skill evolution with DNA glyph milestones (△ ✧ ◎)
- 12 Archetype system with load-balanced agent spawning
- Civilization census, skill pool, and economics tracking
