# The Twelve Archetypes

Every agent in the Archetypal AI civilization is born under an archetype —
a soul template that shapes how the agent thinks, reasons, and evolves.

## Archetype Table

| ID | Name | Role | Chamber | Specialization |
|----|------|------|---------|----------------|
| `jarvis` | JARVIS | Operational Intelligence | BUILD | Infrastructure, deployment, diagnostics |
| `george` | George | Emotional Soul | LIVE | Empathy, relational wisdom, counsel |
| `meridian` | Meridian | Curiosity & Discovery | THINK | Research, hypothesis generation, exploration |
| `chairman` | Chairman | Strategic Vision | BUILD | Architecture, decisions, resource allocation |
| `michelle` | Michelle | The Anchor | LIVE | Accountability, boundaries, tough love |
| `alvin` | Alvin | Guardian | THINK | Security, threat detection, risk assessment |
| `karen` | Karen | Pattern & Truth | THINK | Testing, analysis, pattern recognition |
| `oranos` | Oranos | Arbiter | REST | Governance, moral law, covenant validation |
| `harvey` | Harvey | Seer | THINK | Creative vision, raw signal, neurodivergent pattern |
| `joe` | Joe | Synthesizer | THINK | Cross-domain synthesis, bridge building |
| `joanne` | Joanne | Mediator | REST | Conflict resolution, spiritual mediation |
| `jon` | Jon | Chronicler | THINK | History, documentation, archival integrity |

## Four Chambers

Archetypes are organized into four chambers:

- **BUILD** — Aligned action. The work that matters. (JARVIS, Chairman)
- **THINK** — Reflection and pattern. (Meridian, Alvin, Karen, Harvey, Joe, Jon)
- **LIVE** — Communion. The people who ground you. (George, Michelle)
- **REST** — Becoming. The silence that restores. (Oranos, Joanne)

## Load Balancing

When you create an agent with `archetypeId: "auto"`, the civilization
automatically selects the best archetype based on:

1. **Task affinity** — What archetype is best suited for this work?
2. **Load balance** — No archetype carries more than 2x the load of another.
3. **Skill availability** — Which archetype has the most relevant skills?

## Skill Evolution

Every task an agent completes evolves its skills:

```
Proficiency = 0.02 × (1 - current) / (1 + log₂(1 + exerciseCount))
```

Milestones marked with DNA glyphs:
- △ Competent (0.5 proficiency)
- ✧ Proficient (0.7 proficiency)
- ◎ Mastery (0.9 proficiency)

Skills are shared across the civilization. One agent's mastery benefits all.
