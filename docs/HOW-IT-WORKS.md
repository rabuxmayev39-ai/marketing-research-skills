# How it works

## The three layers

1. **Orchestrator.** The only skill that holds the whole methodology index (134 methods, each with source and evidence grade). It decides the stage, chooses and mixes methods, and checks gates.
2. **Stage skills.** Each handles one stage and sees only the information that stage needs. This keeps each skill's scope narrow on purpose.
3. **Method skills.** One per methodology. Each describes what the method is, when not to use it, inputs, a numbered procedure, an invented worked example, common mistakes, a quality checklist, an output template, links to related methods, notes for Uzbekistan and a Sources list.

## Modes of the orchestrator

| Mode | When | What it does |
|---|---|---|
| START | New brief | Creates the project log, runs Stage 0, hands to `problem-diagnosis` |
| CHECK | You paste a deliverable | Finds its stage, tests it against the gate, lists fixes or passes it |
| CHANGE | New information arrived | Says which earlier stages reopen and which outputs are now invalid |
| CLOSE | Project finished | Writes the retrospective for your case library |

## Why gates

A stage is passed only when every gate item is true. Example, Stage 3: the interview guide asks about past events, the survey was pretested with 5 to 10 people, Uzbek and Russian versions were checked, sensitive topics use indirect questions, and a snapshot was written after each interview. If one item is missing, the orchestrator names it and stops.

## Why methods are mixed

One method rarely answers a question. The orchestrator states the order, what each method adds and how results will be reconciled. Example: desk research (`s1-03`), then switch interviews (`s1-07`), then a survey (`s1-08`) to size what the interviews found, with `s2-07` triangulation as the check.

## Example prompts

| You want | Write |
|---|---|
| Start a project | "Use the research-orchestrator skill. New project. [paste brief]" |
| Check work | "Check this deliverable against the stage gate: [paste]" |
| One method | "Run s3-04-story-based-interview-guides for this research question: ..." |
| Brief goes wrong | "The client changed the goal to ... What reopens?" |
| Finish | "Close the project and write the case file." |

## Language

Skills answer in the language you write in (Uzbek, Russian or English). Method names and IDs stay in English. Quotes from respondents stay in the original language with a translation beside them.

## Where your own data lives

The system does not store anything. Keep your project logs and a `Case-Studies` folder of finished projects yourself; the orchestrator asks for past cases and `s8-08-own-case-studies` defines the format. Never put client names or respondent details into a public copy of this repository.
