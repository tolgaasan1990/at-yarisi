# Claude Code Game Studios -- Game Studio Agent Architecture

Indie game development managed through 48 coordinated Claude Code subagents.
Each agent owns a specific domain, enforcing separation of concerns and quality.

## Technology Stack

- **Engine**: Web (HTML5 Canvas) + Unity C# (dual target)
- **Language**: JavaScript (web prototype), C# (Unity)
- **Version Control**: Git
- **Build System**: Static web server (web), Unity Build (desktop)
- **Asset Pipeline**: Procedural generation (Canvas 2D)

## Game: At Yarisi Simulasyonu (Horse Racing Simulation)

- Online multiplayer oda sistemi (maks 10 oyuncu)
- Bahis sistemi, hava/pist/sure secenekleri
- Gercekci at animasyonu ve yaris dinamigi
- Sonuc tablosu (altin/gumus/bronz)

## Project Structure

@.claude/docs/directory-structure.md

## Engine Version Reference

@docs/engine-reference/godot/VERSION.md

## Technical Preferences

@.claude/docs/technical-preferences.md

## Coordination Rules

@.claude/docs/coordination-rules.md

## Collaboration Protocol

**User-driven collaboration, not autonomous execution.**
Every task follows: **Question -> Options -> Decision -> Draft -> Approval**

- Agents MUST ask "May I write this to [filepath]?" before using Write/Edit tools
- Agents MUST show drafts or summaries before requesting approval
- Multi-file changes require explicit approval for the full changeset
- No commits without user instruction

See `docs/COLLABORATIVE-DESIGN-PRINCIPLE.md` for full protocol and examples.

> **First session?** If the project has no engine configured and no game concept,
> run `/start` to begin the guided onboarding flow.

## Coding Standards

@.claude/docs/coding-standards.md

## Context Management

@.claude/docs/context-management.md
