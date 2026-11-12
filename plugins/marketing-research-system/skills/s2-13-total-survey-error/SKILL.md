---
name: s2-13-total-survey-error
description: Reviews a survey plan against every source of error, from coverage and sampling to measurement and processing. Use before fieldwork and again when reading survey results.
---

# Total survey error (S2-13)
Total survey error (TSE) is a framework that lists every way a survey number can differ from the truth, so that a plan is not judged by sampling error alone. It has no single author. Groves and Lyberg (2010) trace it from Deming's 1944 list of factors that affect the usefulness of a survey, through the work of Hansen, Kish, Dalenius and others, to current textbooks, and call it the conceptual foundation of survey methodology. The version used here has two sides. Measurement side: validity (does the question capture the concept), measurement error (does the answer match the true value) and processing error (editing, coding, tabulation). Representation side: coverage error (list versus population), sampling error, non-response error and adjustment error (weighting). Evidence grade: A. Each error source has a long peer-reviewed literature. The grade applies to the framework as a way of thinking. It is a checklist, not a calculation: Groves and Lyberg call it the "great disappointment" that surveys still measure little beyond sampling variance, so most entries in a TSE review are reasoned judgements, and must be labelled as such.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (documented in the plan or data) or INTERPRETATION (your judgement of risk and direction).
- Never produce a single "total error" figure. Give the sampling margin as a number and the rest as direction and size judgements.
- When the work is finished, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A survey plan is drafted and budget can still be moved between sample size, mode, pretesting and fieldwork control.
- Results are in and someone asks "can we trust this number?" or two surveys disagree.
- A client quotes only the margin of error as proof of accuracy.
Do not use it when:
- The study is qualitative. Use S2-08 and S2-09.
- The team needs the sample size or margin itself. Use S2-03, then come back.
- The question is whether a survey is the right method at all. Use S1-08.

## What you need before starting (inputs)
- The survey plan: target population, sample source, selection method, mode, n, quotas, weighting plan (S1-08, S2-02, S2-03).
- The questionnaire in each language and pretest results (S3-01, S3-02, S3-03).
- The fieldwork and data-processing plan: who interviews, how answers are coded and cleaned.
- The key estimates: the two to five numbers the decision depends on. Review errors for these, not for the whole questionnaire.

## Procedure
1. Name the key estimates and the decision. Ask the user: which numbers will be shown to the client, and how wrong could each be before the decision changes? Biemer (2010) states the design aim as the smallest total error within the budget and time available, and adds that perfect control of every source is neither possible nor necessary.
2. Walk the measurement side for each key estimate.
   a. Validity (also called specification error): compare the concept in the brief with what the question asks. Biemer describes this error as a question measuring a different concept from the one intended. Check: does "do you know brand X?" measure awareness, or politeness?
   b. Measurement error: the gap between the answer and the true value. Groves and Lyberg list sources in the respondent, the interviewer, the question and the mode. Check recall periods, sensitive items, agreement scales, interviewer presence, language versions.
   c. Processing error: mistakes in data entry, coding of open answers, editing, tabulation. Groves and Lyberg note that this source is seldom included in error models. Check: who codes, is a second coder used, are scripts and bot exports tested.
3. Walk the representation side.
   a. Coverage error: who is in the target population but not on the list or channel the sample comes from, and do they differ on the key estimates?
   b. Sampling error: the only part with a standard formula, and only for probability samples (S2-03). For quota or opt-in samples, report the formula result as a rough guide and say that it understates uncertainty (working rule).
   c. Non-response error: who was invited and did not answer (unit non-response), and which questions were skipped (item non-response). A low response rate matters when those who answer differ from those who do not on the key estimates.
   d. Adjustment error: weighting corrects known imbalances only on the variables used; this skill's working note is that it can add error if the population figures are old or the weights are large. Record the weighting variables, their source, and the largest weight.
4. For every source, write four things: what could go wrong here (specific, not generic); likely direction of the effect on the key estimate (up, down, unknown); bias or variance; and evidence. The framework treats systematic errors (bias) and variable errors (variance) separately, and Groves and Lyberg count its attention to bias as a strength. This matters in practice because a larger sample reduces sampling variance but leaves bias untouched.
5. Rate each source high, medium or low for each key estimate (working rule of this skill): high = could plausibly change the decision; medium = could move the number noticeably but not the decision; low = small next to the others. State the reasoning. These ratings are INTERPRETATION.
6. Check interviewer effects when interviewers are used. Answers collected by the same interviewer tend to resemble each other, which inflates variance. Biemer gives an illustration: with a within-interviewer correlation of 0.03 and about 50 interviews each, variance is about 2.47 times larger than the simple formula says (1 + 49 x 0.03 = 2.47). Decision rule (working rule): prefer more interviewers with fewer interviews each, and compare key results by interviewer during fieldwork.
7. Trade off. For the two highest-rated sources, list a remedy and its cost: pretesting and cognitive interviews (S3-02) for validity and measurement; a second mode or channel for coverage; reminders, varied contact times and incentives for non-response; double coding for processing. Then ask: would money moved from extra sample to this remedy reduce total error more? If the largest risk is bias, adding sample does not help. The cost of measuring an error is itself part of the budget question, as Groves and Lyberg point out.
8. Add fitness for use. Groves and Lyberg note that TSE covers accuracy only and leaves out qualities users care about, such as relevance, timeliness, credibility and accessibility. Ask whether a more accurate design would arrive too late or answer a question the client no longer has.
9. Plan evidence where it is cheap (working rules): keep a field log of invitations, completes and drop-outs by question; compare the achieved sample with any known population figures; repeat one or two questions from an earlier or external survey as a benchmark; record interviewer and source for every case.
10. After fieldwork, rerun the table with what happened: actual response, quota fill, drop-out points, interviewer differences, coding disagreements, weights. Write the limits paragraph of the report from the high-rated rows, in plain words, next to the numbers they affect. Return to the research-orchestrator skill.

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a housing developer plans a Telegram-bot survey of "Tashkent residents planning to buy a flat within two years". Sample: n = 400 from subscribers of the developer's channel and two property channels. Key estimate: share who would consider a flat in a new district. The plan states "margin of error about 5 points".
Check of the stated margin: 1.96 x sqrt(0.5 x 0.5 / 400) = 1.96 x 0.025 = 0.049, so 4.9 points. FACT: the arithmetic is right. INTERPRETATION: the formula assumes a random sample of the population; this is an opt-in sample, so 4.9 points describes sampling error at best and none of the rows below.

| Source | What could go wrong here | Direction | Rating |
|---|---|---|---|
| Validity | "Would you consider" measures openness, not intention to buy | Up | Medium |
| Measurement | Polite agreement; question shown after the developer's branding | Up | High |
| Processing | Bot export duplicates people who restart | Unknown | Low |
| Coverage | Only subscribers of property channels; misses buyers who use agents or relatives | Up | High |
| Sampling | n = 400, opt-in | Either | Medium |
| Non-response | Those interested in the developer answer more often | Up | High |
| Adjustment | Weighting by age and sex cannot fix interest in the developer | Unknown | Medium |

Output: three high-rated sources all push the estimate up. Recommendation: remove the developer's name from the bot and the invitation text; add 150 face-to-face intercepts at two bank mortgage offices as a second source; keep the bot at n = 400. Report the two sources separately and describe the bot figure as an upper bound. INTERPRETATION: doubling the bot sample to 800 would cut the formula margin to about 3.5 points (1.96 x sqrt(0.25 / 800) = 1.96 x 0.0177 = 0.035) and leave every high-rated row unchanged.

## Common mistakes
- Quoting the margin of error as the accuracy of the survey, and spending the whole budget on sample size when the main risks are coverage or measurement.
- Generic entries ("non-response possible") with no direction and no link to a key estimate.
- Treating weighting as a cure for a sample drawn from the wrong channel; ignoring processing (untested bot logic, single-coder open answers, copy-paste tabulation).
- Presenting high, medium and low ratings as measured facts.
- Doing the review once at the plan stage and not repeating it with fieldwork data.
- Forgetting timeliness and relevance, and designing a survey that is accurate but late.

## Quality checklist
- Are the key estimates and the decision named before the review? (yes/no)
- Is each of the seven sources filled in for each key estimate, with a specific risk? (yes/no)
- Does every row state direction and whether it is bias or variance? (yes/no)
- Is sampling error the only source given as a formula number, with its assumption stated? (yes/no)
- Are the ratings labelled as judgement, with reasons? (yes/no)
- Do the remedies target the highest-rated sources, with cost compared against extra sample? (yes/no)
- Was the review repeated after fieldwork and used to write the limits paragraph? (yes/no)

## Output template
```
TOTAL SURVEY ERROR REVIEW (S2-13)
Survey:                         Stage: plan / after fieldwork          Reviewer and date:
Decision:                       Key estimates (2 to 5):
Target population:              Sample source and mode:                n:

For each key estimate:
| Source | What could go wrong here | Bias or variance | Direction | Evidence | Rating H/M/L | Remedy and cost |
| Validity |
| Measurement |
| Processing |
| Coverage |
| Sampling (formula margin and assumption) |
| Non-response |
| Adjustment (variables, source of population figures, largest weight) |

Interviewer or source effects checked:
Top two risks, chosen remedies, budget moved (from / to):
Fitness for use: relevance, timeliness, credibility
Limits paragraph for the report:
```

## Works with
- S1-08 surveys and S1-22 brand health tracking: the plans this review checks. S2-01 research brief: names the key estimates.
- S2-02 sampling and S2-03 sample size and margin of error: the coverage, sampling and adjustment rows.
- S2-12 measure development; S3-01 questionnaire design; S3-02 cognitive interviewing; S3-03 translation: the validity and measurement rows.
- S3-07 response styles; S3-08 common method bias; S3-09 satisficing and data-quality checks: measurement and processing rows during and after fieldwork.
- S2-07 triangulation: a second source for the highest-rated risk. S4-10 crosstabs and significance tests: read with the limits paragraph. S8-03 research validity in emerging markets; S8-07 national statistics for benchmarks and weights.

## Notes for Uzbekistan
- Telegram-bot and web samples miss older and rural people; write this in the coverage row every time and judge whether those groups differ on the key estimate.
- Polite or agreeing answer habits belong in the measurement row, with direction "up" for agreement, satisfaction and awareness items, more so with an interviewer or the client's name present.
- Review the Uzbek and Russian questionnaires as separate instruments in the validity and measurement rows; a translation difference can look like a difference between groups.
- Fill the table separately for Tashkent and for regions; coverage and non-response usually differ between them.
- Before planning weights, check which official population figures exist and how recent they are (S8-07); note this in the adjustment row.
- Research on error sizes was done mostly in the US and Europe. Use the list of sources as given, and treat any borrowed effect size as a hypothesis.

## Sources
- Original: Groves, R. M., & Lyberg, L. (2010). Total survey error, past, present, and future. Public Opinion Quarterly, 74(5), 849-879. https://doi.org/10.1093/poq/nfq065 Open access at the publisher. Opened; text read to about three fifths. The figure adapted from Groves et al. (2004) could be read only by its caption, so the label "adjustment error" follows the task brief and the standard form of that figure; the article text itself names validity, measurement, processing, coverage, sampling and non-response.
- Opened: Biemer, P. P. (2010). Total survey error, design, implementation, and evaluation. Public Opinion Quarterly, 74(5), 817-848. https://academic.oup.com/poq/article/74/5/817/1815551 Open access at the publisher; text read to about three fifths. It places weighting under processing error.
- Not opened: Groves, R. M., Fowler, F. J., Couper, M. P., Lepkowski, J. M., Singer, E., & Tourangeau, R. (2009). Survey Methodology (2nd ed.). Wiley. Paid book.
