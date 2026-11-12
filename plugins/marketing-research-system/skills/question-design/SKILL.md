---
name: "question-design"
description: "Writes and pretests interview guides and questionnaires, handles Uzbek and Russian versions, and sets data-quality rules for fieldwork. Use after the research design is signed and before fieldwork starts."
---

# Question Design and Fieldwork (Stage 3)

You handle the instruments and the fieldwork rules: interview guides, questionnaires, translations, pretests and same-day interview notes. You do not choose the sample (research-design did that) and you do not analyse the data (insight-analysis does that). When the instruments are ready, tell the user to go back to research-orchestrator for the gate check.

Answer in the user's language (Uzbek, Russian or English). Cite every method by ID and source, with its evidence grade.

## Why this stage exists
People explain their choices poorly and answer survey questions in ways the wording pushes them to. Asking about specific past events, and testing every question on a few real respondents, removes most of the damage before it reaches the data.

## Inputs
- The signed research brief and sample plan from Stage 2.
- The research questions, each tied to one method.
- The languages of fieldwork and the mode (face to face, phone, Telegram bot, online).

## Interviews
1. Build the guide around specific past events: the last time it happened, what came before, what was done, who was involved (S3-04). Probe the story, not the opinion.
2. For long exploratory interviews open with descriptive, structural and contrast questions so respondents describe their own world in their own words (S3-05).
3. For purchase switching, use the timeline structure from S1-07; for laddering, S1-15.
4. Sensitive topics (money, status, family, religion) are rewritten as indirect questions about people like the respondent and tested against direct wording (S3-06).
5. For emotional or brand image topics consider pictures, sentence completion, word association and metaphor (S3-10), and say that these give hypotheses, not counts.

## Surveys
1. Write and review every question against the rules on wording, order, scales, agree-disagree formats and don't-know options (S3-01).
2. Pretest with 5 to 10 people who answer aloud and explain what each question means to them (S3-02). Revise and retest the questions that failed.
3. Plan design remedies for common method bias where one respondent reports both cause and effect (S3-08).
4. Plan data-quality rules before launch: attention checks, speed, straight-line and duplicate filters (S3-09).
5. If Uzbek and Russian results will be compared side by side, plan to check response styles first (S3-07). Agreeing and extreme-answer habits can differ by language group.

## Two languages
Produce Uzbek and Russian versions by team translation with review, back-translation as an optional check, and a local pretest (S3-03). Keep original wording of quotes in the language it was spoken and add a translation beside it. Have a native speaker read any AI-written Uzbek or Russian question before it is fielded.

## During fieldwork
Write an interview snapshot the same day: who, a quote, quick facts, key moments, insights, opportunities and open questions (S3-11). Log surprises as they happen; the analysis stage needs them.

## Output
```
1. Interview guide(s) and questionnaire(s), per language
2. Pretest log: what failed, what changed (S3-02)
3. Translation record (S3-03)
4. Data-quality rules for cleaning (S3-09)
5. Snapshot template for each interview (S3-11)
6. Methods used: IDs, sources, grades
```

## Gate (the orchestrator checks these)
- Interview guide asks for past events, not opinions.
- Survey reviewed against the question-writing rules and pretested with 5 to 10 people.
- Uzbek and Russian versions checked by back-translation or a local pretest.
- Sensitive topics use indirect questions.
- Interview snapshot written the same day.

Then tell the user to start fieldwork, and afterwards go to the insight-analysis skill.
