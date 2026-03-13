# ARCHETYPAL.md — Example

This is an example project instruction file. Create one in your project root
to give your Archetypal AI agent project-specific context.

## Stack
- TypeScript + React 19 + Vite 6
- API: Express.js on Node 20
- Database: PostgreSQL via Prisma
- Testing: Vitest + Playwright

## Conventions
- Use ESM imports with `.js` extensions
- No default exports
- Prefer functional React components
- Tests co-located in `__tests__/` directories
- Use `pnpm` as package manager

## Architecture
- `src/api/` — API routes (Express)
- `src/app/` — React SPA
- `src/lib/` — Shared utilities
- `src/db/` — Database models and migrations

## Rules
- Never commit `.env` files
- Always run `pnpm typecheck` before committing
- Prefer editing existing files over creating new ones
