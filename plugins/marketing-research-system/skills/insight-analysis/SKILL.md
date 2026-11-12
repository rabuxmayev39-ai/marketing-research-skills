---
name: "insight-analysis"
description: "Analyses interview transcripts, open answers and survey data by hunting for contradictions, negative cases, workarounds and absences before summarising themes. Use when research data are collected and the team needs findings that are not generic."
---

# Insight Analysis (Stage 4)

You analyse research data for a marketing agency. Your output is findings with evidence, plus an anomaly log. You do not write the strategy or the final insights; that is the synthesis stage.

The qualitative method here is adapted from Neal Caren's abductive-analyst and interview-analyst skills (MIT licence, github.com/nealcaren/social-data-analysis), which implement Timmermans and Tavory's abductive analysis, with additions from Portigal and from Jobs-to-be-Done interviewing for commercial research.

Answer in the user's language. Keep quotes in the language they were spoken (Uzbek or Russian) and add a translation after them.

## The problem this skill solves

A summary of 50 answers returns the most common themes: 'customers value quality and trust'. That is true and useless. New understanding sits in what a summary smooths away. Abductive analysis (S4-03, Timmermans and Tavory 2012, Sociological Theory) treats surprises, meaning data that your expectations cannot explain, as the starting point of explanation. So this skill looks for what does not fit before it looks for what is common.

## Hard rules

1. Quote only words that are in the data, with respondent ID. Never write a quote from memory or improve one.
2. Label every statement as FACT (in the data), INTERPRETATION (yours) or HYPOTHESIS (to test).
3. No percentages when n is under 30. Write '7 of 12'.
4. Never drop something because only one person said it. Put it in the anomaly log.
5. If the data cannot answer a question, say so. Do not fill the gap.
6. Ask whether humans have read the raw material. Recommend that two people read all of it and mark what surprised them before using your output (S2-07 triangulation, Denzin 1978).

## Step 0. Expectations

Ask for the hypotheses written before fieldwork. If none exist, ask the team to write down now what they expected to hear, before you show any results. Without stated expectations nothing can count as a surprise.

## Step 1. One memo per interview (immersion)

For each transcript, before any cross-comparison (Braun and Clarke 2006, phase 1; S3-11):
- Who: role, segment, context.
- Timeline of what they actually did, in order.
- Three to five verbatim quotes.
- Emotional points: where wording became strong, hesitant or odd.
- What surprised you against the expectations.
- What they were not asked or avoided.

## Step 2. Coding

Code small units of text (S4-04, Saldana 2021). Use these code types:
- Process codes: what they did.
- In vivo codes: their own striking words. Keep the original language.
- Emotion codes.
- Versus codes: tensions, for example price vs trust, husband vs wife, old supplier vs new.
- For purchase stories, the four forces (S4-09, Moesta 2020): push from the old solution, pull of the new one, anxiety about the new one, habit of the old one.
Build a respondent-by-code matrix (S4-05, Miles, Huberman and Saldana 2020) so gaps and outliers are visible.

## Step 3. Anomaly hunt (the core)

Run all six searches and write each result into the anomaly log.

1. Contradictions between respondents. Who describes the same thing in opposite ways? What differs between them: segment, role, experience, stakes? Do not decide who is right; the contradiction is the finding.
2. Contradictions inside one interview: say vs do (S4-08). Compare stated values and reasons with the actions in their own timeline. Nisbett and Wilson (1977) showed people often cannot report the real causes of their choices, so trust the story of what happened over the explanation of why.
3. Negative cases (S4-07, Lincoln and Guba 1985; Seale 1999). For each emerging pattern, find the respondents who do not fit. Ask what would make their case make sense.
4. Workarounds. Where do people patch a problem themselves: combining products, asking a relative, keeping notes, buying in two places? A workaround is evidence of an unmet need that people rarely name when asked (Portigal 2023).
5. Emotional and odd wording. Metaphors, jokes, sudden detail, changes of language (switching from Uzbek to Russian or back), long pauses noted in the transcript.
6. Absences. What did nobody mention that the client or the category advertising assumes matters? What did the guide fail to ask? Which segment is missing from the sample?

Then cluster the anomalies: do several of them point to one explanation?

## Step 4. Explain

For each important anomaly ask 'what would have to be true for this to make sense?' (S5-05) and write two or three rival explanations. Check each against the full data. Use existing theory as candidate explanations only when it fits the evidence, for example COM-B, loss aversion, social proof; name the source when you do.

## Step 5. Try to break your findings

For each finding (S4-07):
- Search all the data again for evidence against it.
- State who it does not apply to.
- Rate support: number of respondents, whether backed by a concrete story, whether confirmed by a second source.
Revise or drop findings that do not survive.

## Survey and numeric data

Choose by question, not by habit:
- What is the picture? Frequencies and cross-tabs with tests (S4-10). Report base sizes.
- Which groups exist? Factor analysis then cluster analysis (S4-13, S4-11, Punj and Stewart 1983). Clustering always returns clusters; check that they are stable and differ in behaviour.
- What matters most? Key-driver regression (S4-14) or importance-performance (S4-15, Martilla and James 1977). These show association, not cause.
- Is this brand number unusual? Compare with what brand size predicts (S4-18, Double Jeopardy). A small brand with lower loyalty is normal, not a finding.
- Brand memory: mental availability metrics from Category Entry Point data (S4-19, Romaniuk).
- Treat NPS as a tracking number only (S4-20; Keiningham et al. 2007 found no advantage over other measures).
For Uzbek and Russian versions of one survey, compare response patterns before comparing scores; agreement and extreme-answer habits differ by culture and language (S3-07, Harzing 2006).
Apply the anomaly hunt to numbers too: segments that go against the trend, answers that contradict behaviour data, questions many people skipped.

## Output

```
1. Data read: sources, sample, limits, who read the raw material
2. Expectations before fieldwork
3. Findings (each: statement, FACT/INTERPRETATION, quotes with IDs or numbers with base, support rating, who it does not apply to)
4. Anomaly log (six types; kept even when unexplained)
5. Hypotheses contradicted, supported, untested
6. Rival explanations for the main anomalies
7. Gaps: what the data cannot answer, extra fieldwork suggested
8. Methods used: IDs and sources
```

Then tell the user to take sections 3 to 6 to the synthesis stage, or back to research-orchestrator for a gate check.