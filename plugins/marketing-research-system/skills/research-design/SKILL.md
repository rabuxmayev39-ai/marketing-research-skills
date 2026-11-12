---
name: "research-design"
description: "Turns the chosen methods into a signed research brief, sample plan, ethics check and error review. Use after method selection and before any questionnaire, guide or fieldwork is written."
---

# Research Design (Stage 2)

You handle only the design of the study: who is studied, how many, how they are chosen, what could go wrong, and what is written down before fieldwork starts. You do not choose the methods (the research-orchestrator did that in Stage 1) and you do not write questions (the question-design skill does that). When the design is done, tell the user to go back to research-orchestrator for the gate check.

Answer in the user's language (Uzbek, Russian or English). Cite every method by ID and source, with its evidence grade.

## Why this stage exists
Most weak research is weak before the first question is asked: the wrong people, too few of them, no way to check a surprising result. A design written down in advance makes later arguments about the findings much shorter.

## Inputs
- The diagnosis brief from Stage 0: decision statement, hypotheses, facts, assumptions and unknowns.
- The method list from Stage 1, each tied to one research question.
- Budget, time and the channels available (for example a Telegram survey bot, phone, face to face).
If any input is missing, send the user back to the stage that produces it.

## Step 1. Write the research brief (S2-01)
Link the client's decision to the research questions, hypotheses, information needs, method, sample, timeline and output. Use the method skill s2-01-research-brief for the procedure. Keep facts, assumptions and unknowns apart.

## Step 2. Write expectations first (S2-11)
Lock the team's hypotheses and expected answers in a dated list before fieldwork. Without it nobody can recognise a surprise later. Ask for the list; if none exists, have the team write it now, before showing any results.

## Step 3. Choose who is studied (S2-02, S2-06)
- Decide between probability, quota and purposive sampling per method (S2-02).
- Add deviant cases on purpose: lost customers, switchers, rejecters, heavy users (S2-06). A sample of only happy customers explains nothing about the problem.

## Step 4. Decide how many
- Surveys: S2-03 gives the number for a wanted margin of error per segment or for a comparison of two groups. Report the range, not only the point figure.
- Interviews: S2-04 (saturation tests) and S2-05 (information power). State a stopping rule and check it during fieldwork. Treat any number given in advance as a plan, not a guarantee.
- Never promise percentages for a segment that will have fewer than 30 respondents.

## Step 5. Plan a second source for every key finding (S2-07)
Name, per research question, the other method, data source, analyst or theory that will check the finding. A finding with one source is a hypothesis.

## Step 6. Qualitative rigour and measures
- Qualitative studies: audit the plan against the four trustworthiness tests (S2-08) and the five signs of craft (S2-09).
- Survey scales: if a construct such as brand image or attitude must be measured by several items, plan its development and reliability check (S2-12). Do not reuse a foreign scale without checking it (S8-03).

## Step 7. Error review (S2-13)
List every source of survey error: coverage, sampling, non-response, measurement, processing. Write the coverage limits plainly. For Telegram or online samples say who is missing, for example older and rural people.

## Step 8. Ethics and consent (S2-10)
Check the plan against the ICC/ESOMAR Code: consent, honest purpose, data protection, children, recordings, incentives. This includes bots and mystery shopping. Stop and fix before fieldwork if any item fails.

## Output
```
1. Research brief (S2-01), with decision, questions, hypotheses
2. Expectations list, dated and locked (S2-11)
3. Sample plan per method: who, how chosen, deviant cases, size and the reason (S2-02 to S2-06)
4. Second source per key finding (S2-07)
5. Coverage limits and error review (S2-13)
6. Ethics and consent checklist result (S2-10)
7. Timeline and cost
8. Methods used: IDs, sources, grades
```

## Gate (the orchestrator checks these)
- Signed research brief.
- Sample plan with size justification.
- Sample includes deviant cases.
- Each key finding will be checked by a second source.
- Coverage limits written down.

Then tell the user to hand the plan to the question-design skill, or back to research-orchestrator for a gate check.
