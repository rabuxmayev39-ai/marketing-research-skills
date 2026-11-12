---
name: s2-12-measure-development
description: Builds a reliable multi-item survey measure, from defining the construct to item purification, coefficient alpha and validity checks. Use when a survey must measure an attitude or brand image.
---

# Measure development (S2-12)
Some things a survey must measure cannot be captured by one question: trust in a supplier, perceived quality, brand image. Measure development is the procedure for building a set of items that together measure one such construct reliably. Gilbert A. Churchill Jr. set it out for marketing in 1979 as a sequence of eight steps: specify the domain of the construct, generate a sample of items, collect data, purify the measure, collect new data, assess reliability, assess validity, develop norms. His article illustrates parts of the approach with a job satisfaction measure. Boateng and colleagues (2018) give a current open-access version in three phases and nine steps, with rules of thumb. Evidence grade: A. The procedure is peer-reviewed, and its statistics (item-total correlation, coefficient alpha, factor analysis) are standard and well studied. The grade applies to a measure taken through the steps; a list of statements invented in one meeting earns none of it. Limit: the full procedure is heavy for a one-off project. Boateng and colleagues note that not every step is needed in every study, and that a study using an existing scale needs only the later testing steps. Reuse a published scale when one fits.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (a statistic from the data, with n) or INTERPRETATION (your reading).
- Mark every threshold as sourced or as a working rule. Thresholds are conventions, not laws.
- When the work is finished, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A construct will be tracked over time or compared between brands or segments, so the same measure will be reused (S1-22).
- The construct will be used in driver analysis or segmentation and a single noisy item would weaken the result (S4-14, S4-11).
- No published scale fits the category, language or respondents.
Do not use it when:
- The thing measured is a fact or behaviour (bought, how often, where). One well-worded question is enough (S3-01).
- A validated published scale exists. Translate and pretest it (S3-03, S3-02) and run only steps 7 to 9 below.
- The project is one small survey with no reuse. Working rule: use two or three items per construct taken from qualitative wording, report them separately, and do not call the sum a scale.

## What you need before starting (inputs)
- The construct named in the brief and the decision it serves (S2-01).
- Qualitative material in respondents' own words (S1-04, S1-05), and any published scales found in desk research (S1-03).
- Access to at least one sample of the target population large enough for step 5, ideally a second one for step 8.
- A spreadsheet. Factor analysis needs statistical software (S4-13).

## Procedure
1. Specify the domain. Write a definition of the construct: what is included, what is excluded, and its expected dimensions (for example, trust = competence + honesty). Ask the user: what would a person high on this say or do, and what similar thing must not be mixed in? Search for existing scales before writing new items.
2. Generate items. Draw statements from interview quotes, the literature and experts. Boateng and colleagues advise a starting pool at least twice as long as the final scale. Write simple, single-idea statements in the respondents' words. They recommend five response points for one-directional items and seven for two-directional ones, and report that two or three points are less reliable.
3. Check content. Ask experts who did not write the items to rate each item as relevant or not and to name missing aspects; the primer suggests 5 to 7 judges. Then run cognitive interviews with target respondents (S3-02); the primer cites 5 to 15 people over two or three rounds. Drop or rewrite items that are misread.
4. Collect data. Sample size rules of thumb reported in the primer: at least 10 respondents per item, and 200 to 300 or more in total; one cited grading calls 100 poor, 200 fair, 300 good. Place the items in random or rotated order within the questionnaire (working rule).
5. Purify the measure. Reverse-score negatively worded items first. Then, for each expected dimension:
   a. Corrected item-total correlation: the correlation of each item with the sum of the other items. The primer treats values below 0.30 as a cue for possible deletion.
   b. Inter-item correlations: the primer gives the same 0.30 cue for these. Working rule: also look at pairs above about 0.80, which may be the same question asked twice.
   c. Coefficient alpha (spreadsheet method below). Recompute after removing each weak item.
   d. Factor analysis (S4-13) to see whether items group as expected. The primer treats loadings below 0.30 as inadequate, keeps items at 0.40 or higher, and removes items that load on several factors.
   Decision rule: delete an item only if the numbers and the meaning agree. Before deleting, reread the item; if it covers a part of the domain no other item covers, rewrite it and retest instead. Churchill's approach has been criticised by Rasch-measurement writers for leaning on numerical indicators more than on the meaning of the items.
6. Coefficient alpha in a spreadsheet. Layout: one row per respondent (rows 2 to 201 for n = 200), one column per item (B to F for 5 items), complete cases only.
   - Total score in G2: `=SUM(B2:F2)`, filled down. Variance of each item in B203 to F203: `=VAR.S(B2:B201)`, filled across. Variance of the total in G203: `=VAR.S(G2:G201)`.
   - Alpha: `=(5/(5-1))*(1-SUM(B203:F203)/G203)`. In general, alpha = k/(k-1) x (1 - sum of item variances / variance of the total), where k is the number of items.
   - Corrected item-total for item B: helper column H2 `=G2-B2`, filled down, then `=CORREL(B2:B201,H2:H201)`.
7. Read alpha with its limits. The primer reports 0.70 as an often accepted level and 0.80 to 0.95 as preferred. The University of Virginia Library guide warns that such standards are arbitrary, that alpha rises simply when items are added, that a value above 0.95 may signal redundant items, and that a high alpha does not show the items form one dimension or that the measure is valid.
8. Collect new data. Repeat the reliability and factor checks on a second sample, because items chosen on one sample fit that sample partly by chance. The primer's ideal is to develop on sample A and test on an independent sample B. Working rule when only one sample exists: split it at random, purify on one half and check on the other, and say so in the report.
9. Assess reliability and validity on the new data. Reliability: alpha again, and test-retest correlation if the same people can be asked twice. Validity, as listed in the primer: convergent (correlates with measures of similar things), discriminant (correlates less with different things), criterion (predicts or matches a relevant outcome such as repeat purchase), and known groups (differs between groups that should differ, such as loyal customers and lapsed ones). The primer regards validity as supported when at least two forms of construct validity have been examined.
10. Develop norms. A score means little alone. Record the mean, spread and distribution by segment, brand and wave, so that later scores can be read against them. Keep the item wording, order, response scale and mode fixed from then on.
11. Document: definition, final items in each language, deleted items and why, samples, statistics, limits. Return to the research-orchestrator skill.

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a flour mill wants a "supplier reliability" score from bakers for a yearly tracker. Definition: the baker's belief that the mill delivers the same flour, on time, every time; excludes price and friendliness of the sales agent. Pool: 12 items from interview quotes; 10 remain after expert review and 8 cognitive interviews. Survey: n = 200 bakers. Check: 10 respondents x 10 items = 100 needed by the per-item rule; 200 also meets the lower end of the 200 to 300 rule. Factor analysis puts 5 items on one dimension, shown here.

| Item | Variance | Corrected item-total r |
|---|---|---|
| R1 Same quality in every sack | 1.10 | 0.62 |
| R2 Delivers on the agreed day | 0.95 | 0.58 |
| R3 Tells me in advance about delays | 1.20 | 0.55 |
| R4 I do not need to test each batch | 1.05 | 0.60 |
| R5 The mill has modern equipment | 1.30 | 0.20 |
| Sum of item variances | 5.60 | |

Variance of the total score (5 items): 14.00. FACT: alpha = (5/4) x (1 - 5.60/14.00) = 1.25 x 0.60 = 0.75. R5 has item-total r = 0.20, below the 0.30 cue. Without R5: sum of item variances = 5.60 - 1.30 = 4.30; variance of the 4-item total = 11.20; alpha = (4/3) x (1 - 4.30/11.20) = 1.333 x 0.616 = 0.82.
INTERPRETATION: R5 is about equipment, not about delivery behaviour, so the number and the meaning agree; drop it. The 4-item measure reaches the preferred 0.80 range on this sample. Limit: the items were chosen on this sample, so 0.82 is probably optimistic; confirm on next year's wave before reporting trends, and check that the score is higher among bakers who have stayed with the mill for 2+ years than among those who left (known groups).

## Common mistakes
- Writing items before defining what the construct includes and excludes, or without searching for a published scale.
- Computing alpha across items from several dimensions and reading a high value as proof of one construct.
- Raising alpha by adding near-duplicate items; deleting items by numbers alone and losing part of the domain.
- Reporting reliability from the same sample used to select the items and stopping there; treating reliability as validity.
- Changing wording, order or scale points between waves and still comparing scores.
- Forgetting to reverse-score negative items before any statistic.

## Quality checklist
- Is there a written definition with inclusions, exclusions and dimensions? (yes/no)
- Were published scales searched for first? (yes/no)
- Did items come from respondents' own words and pass expert and cognitive checks? (yes/no)
- Was the sample at least 10 per item and about 200 or more, or is the shortfall stated? (yes/no)
- Were item-total correlations, alpha and factor structure checked per dimension? (yes/no)
- Was each deletion justified by meaning as well as by numbers? (yes/no)
- Were reliability and at least two validity checks run on data not used for item selection? (yes/no)
- Are final wording, scale, mode and norms documented for reuse? (yes/no)

## Output template
```
MEASURE DEVELOPMENT RECORD (S2-12)
Construct:                         Decision it serves:
Definition (includes / excludes):  Expected dimensions:
Published scales checked:          Reused or new, reason:
Item pool: n items, sources        After expert review:        After cognitive interviews:
Sample 1: population, n, mode, dates, language(s)

| Item | Dimension | Variance | Corrected item-total r | Loading | Keep / rewrite / drop | Reason (meaning) |

Alpha per dimension: k =     sum of item variances =     total variance =     alpha =
Sample 2 or split half: n, alpha, factor structure holds (yes/no)
Validity checks: convergent / discriminant / criterion / known groups, with results
Norms: mean, SD by segment / brand / wave
Final items (each language), response scale, order, mode:
Limits:                            Next step:
```

## Works with
- S1-08 surveys and S1-22 brand health tracking: use the finished measure. S6-07 customer-based brand equity: a common source of constructs.
- S1-04, S1-05, S1-15: supply respondents' wording for items. S1-03 desk research: finds published scales.
- S3-01 questionnaire design; S3-02 cognitive interviewing; S3-03 translation and back-translation; S3-07 response styles; S3-08 common method bias; S3-09 data-quality checks.
- S2-03 sample size; S2-13 total survey error (this skill addresses its validity and measurement parts).
- S4-13 factor analysis; S4-14 key driver analysis; S4-11 cluster analysis; S4-17 perceptual mapping: analyses that need reliable measures.

## Notes for Uzbekistan
- Develop and test the Uzbek and Russian versions as two measures. Compute alpha and factor structure for each language before pooling (S3-03).
- Polite or agreeing answer habits push all agreement items the same way and can inflate alpha. Check for straight-line answers (S3-09) and see S3-07. Negatively worded items may be misread; test them in cognitive interviews before relying on them.
- Take item wording from local interviews and keep quotes in the original language; do not translate items from an English scale word for word.
- Check the measure separately for Tashkent and for regions before comparing their scores.
- Telegram-bot samples miss older and rural people; norms built on such a sample describe only the people it reaches.
- Published scales were mostly built on Western samples. Treat a borrowed scale's structure as a hypothesis and rerun steps 7 to 9 locally.

## Sources
- Original: Churchill, G. A., Jr. (1979). A paradigm for developing better measures of marketing constructs. Journal of Marketing Research, 16(1), 64-73. https://doi.org/10.1177/002224377901600110 Paid article. Only the abstract was read (through an abstract index); the eight step names follow the task brief and the standard summary of the article, and the full text was not opened.
- Opened (full text, open access): Boateng, G. O., Neilands, T. B., Frongillo, E. A., Melgar-Quinonez, H. R., & Young, S. L. (2018). Best practices for developing and validating scales for health, social, and behavioral research, a primer. Frontiers in Public Health, 6, 149. https://www.frontiersin.org/article/10.3389/fpubh.2018.00149/full
- Opened: University of Virginia Library. Using and interpreting Cronbach's alpha (formula and cautions). https://library.virginia.edu/data/articles/using-and-interpreting-cronbachs-alpha
- Opened: Institute for Objective Measurement. Churchill's paradigm for better measures. Rasch Measurement Transactions, 22(2). https://www.rasch.org/rmt/rmt222c.htm
- Not verified and left out: the specific coefficients Churchill recommends at each step, and his wording on norms.
