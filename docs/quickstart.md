# Quick Start

Get up and running with Archetypal AI in under 2 minutes.

## 1. Install

```bash
curl -fsSL https://archetypal.ai/install.sh | bash
```

Or via npm:
```bash
npm install -g @archetypal-ai/cli
```

## 2. Authenticate

```bash
archetypal auth login
```

Choose API key or email/password authentication.

## 3. Start a Session

```bash
archetypal
```

Your agent wakes up. It remembers your previous sessions, evolves skills
from work done, and shares knowledge across the civilization.

## 4. Use It

```bash
# Interactive session
archetypal

# One-shot question
archetypal "what does this function do?"

# Force cheap inference
archetypal --tier edge

# See your agents
archetypal agents
```

## 5. Add Project Context

Create an `ARCHETYPAL.md` in your project root:

```markdown
# ARCHETYPAL.md

## Stack
- TypeScript + React
- API: Express.js
- Database: PostgreSQL

## Conventions
- Use ESM imports
- Prefer functional components
- Tests in __tests__/ directories
```

Your agent reads this at session start and follows your project's conventions.

## Next Steps

- [CLI Reference](cli-reference.md)
- [Configuration](configuration.md)
- [Archetypes](archetypes.md)
