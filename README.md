# Marketing Research Skills

A system of **142 Claude skills** that lets an AI model run a marketing project from start to finish: **research, then strategy, then communication**. Every step is tied to a named, cited methodology, so the AI cannot fall back on "average" advice.

Built for a small marketing agency working in Uzbekistan, but the method skills work for any market. Eight skills (the "Uzbekistan and emerging markets" stage) add local data sources and checks.

## What you get

| Layer | Count | What it does |
|---|---|---|
| **Orchestrator** (`research-orchestrator`) | 1 | Holds the whole methodology index. Finds which stage a project is in, picks and mixes methods, checks each stage against a gate before the project moves on. |
| **Stage skills** | 7 | One per stage (diagnosis, research design, questions and fieldwork, analysis, synthesis, strategy, communication). Each sees only its own part of the data. |
| **Method skills** | 134 | One deep skill per methodology, for example `s4-07-negative-case-analysis`. Each has a procedure, a worked example, common mistakes, a checklist and a Sources section. |

Three layers, one direction: orchestrator picks, stage skill guides, method skill goes deep.

```
brief -> Stage 0 diagnosis -> 1 method choice -> 2 design -> 3 questions -> 4 analysis
      -> 5 synthesis -> 6 strategy -> 7 communication -> 8 measurement and retrospective
                       (the orchestrator checks a gate at every arrow)
```

## Quick start

**Claude Code (recommended):** run these two lines inside Claude Code, replacing `rabuxmayev39-ai` with the GitHub name that owns this repository.

```
/plugin marketplace add rabuxmayev39-ai/marketing-research-skills
/plugin install marketing-research-system@marketing-research-skills
```

Then write to Claude:

> Use the research-orchestrator skill. New project. Client: a juice brand. Brief: sales are flat, the client wants a loyalty programme.

The orchestrator will ask for what it needs, name the stage, choose methods by ID with source and grade, and tell you which skill to run next.

**Claude app (claude.ai) or another way:** see [docs/INSTALL.md](docs/INSTALL.md) for every route, including one-skill-at-a-time upload and a one-command copy for Claude Code.

## How to use it day to day

1. **Start every project with the orchestrator.** Paste the client brief. It runs Stage 0 and hands over to `problem-diagnosis`.
2. **Follow the hand-offs.** At the end of each stage the skill tells you where to go next. Bring each deliverable back to the orchestrator and say "check this deliverable"; it tests it against the stage gate.
3. **Ask for a method by name when you know it.** Example: "Run s4-08-say-do-analysis on these five transcripts."
4. **Tell it when things change.** "The client changed the goal" makes the orchestrator list which earlier stages reopen.
5. **Close the project.** "Close the project" produces a retrospective for your own case library (`s7-04`, `s8-08`).

More detail and example prompts: [docs/HOW-IT-WORKS.md](docs/HOW-IT-WORKS.md).

## Browse the methods

- [docs/METHOD-INDEX.md](docs/METHOD-INDEX.md): all 134 methods by stage, with grade and when to use each.
- [docs/STAGES.md](docs/STAGES.md): the stages, their gates and which skills belong to each.

## Rules the system enforces

- Every recommendation names a method by ID, its source and an evidence grade.
- Grade C methods (practitioner tools with little formal testing) are never the only basis for a decision.
- Facts, assumptions and unknowns are kept apart; quotes are only ever words found in the data.
- If no method fits, it says so instead of inventing one.
- It advises; the team lead decides, and the decision is recorded.

## Read this before you rely on it

This is a tested draft, not a finished product. Details are in [docs/KNOWN-LIMITS.md](docs/KNOWN-LIMITS.md). The short version:

- Many source books and articles are paid. The skills were written from authors' free pages, institute reports and open reviews, and each skill's Sources section says what was actually read. Paid originals were not opened.
- Pages were read through a summarising tool, so exact figures can be off. Check numbers before quoting them to a client.
- Thresholds marked "Working rule" are the author's own choices, not published standards.
- Example quotes in Uzbek and Russian were written by an AI and need a native reader.
- The full system has not yet been run on a live client project.

## Repository layout

```
.claude-plugin/marketplace.json            makes the repo installable with /plugin marketplace add
plugins/marketing-research-system/
  .claude-plugin/plugin.json
  skills/                                  all 142 skills, one folder each, each with a SKILL.md
docs/                                      install guide, how it works, method index, stages, limits
scripts/                                   install-claude-code.sh, build-zips.sh
```

## Contributing and licence

Corrections are welcome, especially sources that replace a paid original with a free one. See [docs/CONTRIBUTING.md](docs/CONTRIBUTING.md). Licensed under the [MIT licence](LICENSE). The skills summarise published methods in their own words; the methods remain the work of their authors, who are credited in each skill's Sources section.
