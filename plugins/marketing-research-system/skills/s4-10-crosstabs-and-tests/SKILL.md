---
name: s4-10-crosstabs-and-tests
description: Summarises survey answers, compares groups in cross-tables and checks whether differences are larger than sampling noise. Use for any first pass through closed-question survey data.
---

# Descriptive statistics, cross-tabulation and significance tests (S4-10)

This is the basic toolkit for closed survey questions: counts and percentages, means, cross-tables of one question by another, confidence intervals, and two tests (chi-square for percentages, t-test for means). No single author owns it; it comes from standard statistics teaching (Pearson's chi-square, Student's and Welch's t-tests) and is described the same way in open university texts. Its job is to separate differences that are probably real from differences that a new sample would likely erase. Evidence grade: A. The mathematics is settled and tested, so the results can carry weight, but only inside their assumptions: a test says nothing about whether the sample represents the market, whether the question was understood, or whether a difference is big enough to matter commercially.

Working rules for the assistant: answer in the language the user writes in (Uzbek, Russian or English); label every statement as FACT (a number computed from the data) or INTERPRETATION (what you think it means); when the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- A survey with closed questions is collected and cleaned, and the team needs a first, honest reading.
- Someone asks "is this difference between groups real?" about two percentages or two averages.
- Tables are needed before segmentation (S4-11, S4-12), factor analysis (S4-13) or driver analysis (S4-14).

Do not use it when:
- The data are a handful of interviews or uncoded open answers, or the sample was self-selected and the team wants market shares. Tests do not repair a biased sample (S2-02).
- The question is "which factors drive the outcome when all are considered together". Use S4-14.

## What you need before starting (inputs)

- The data file, one row per respondent, one column per question, with a codebook, and a note on how the sample was recruited (S2-02, S2-03).
- Data-quality checks done: duplicates, speeders, straight-liners removed or flagged (S3-09).
- A short list of planned comparisons, written before looking at the tables (for example "Tashkent versus regions on weekly buying").
- A tool. Excel or Google Sheets is enough for everything here. jamovi (free, point-and-click) gives expected counts, residuals and effect sizes in one screen. Python (pandas, scipy) or R if the team has someone who uses them.

## Procedure

1. Write the planned comparisons first. Ask the user: "Which three to ten group differences would change a decision?" Record them. Everything tested beyond this list is exploratory and must be labelled so in the report.

2. Describe each question on its own. For single-choice and multiple-choice questions give count, percentage and the base (how many answered). For rating scales give the full distribution plus the mean and standard deviation; for skewed numbers such as spend, add the median. Sheets: a pivot table, or COUNTIF, AVERAGE, MEDIAN, STDEV.S. Always print the base n beside every percentage.

3. Put a confidence interval on every headline percentage. Formula from the OpenStax text: p plus or minus 1.96 times the square root of p(1-p)/n for 95 percent. In Sheets: =1.96*SQRT(p*(1-p)/n). The approximation needs more than 5 "yes" and more than 5 "no" answers in the group. For orientation (arithmetic from the formula, at p = 50 percent): n = 100 gives about plus or minus 10 points, n = 400 about 5, n = 1,000 about 3. Read it as the range of plausible values if the sample is a fair draw; it does not cover bias in who answered.

4. Build cross-tables. Put the group (region, customer type) in columns and the answer in rows; show column percentages and the base of each column. Working rule of this skill: do not report percentages for a column with fewer than 30 respondents, and mark columns with 30 to 99 as indicative.

5. Test percentages with the chi-square test of independence. Compute expected counts: row total times column total divided by grand total, for each cell. Sheets or Excel: =CHISQ.TEST(observed_range, expected_range) returns the p-value. jamovi: Frequencies, Independent Samples chi-square, tick Expected counts and Phi and Cramer's V. Python: scipy.stats.chi2_contingency(table). Check the assumptions: each person appears in one cell only, and expected counts are large enough. The common guideline is every expected count at least 5; for larger tables a rule attributed to Moore and McCabe allows up to 20 percent of cells below 5 if none is below 1. If it fails, merge small categories, or for a 2 by 2 table use Fisher's exact test. Read it: p below 0.05 means a difference this large would be unusual if the groups were truly the same. Then report Cramer's V (0 means no association, 1 the strongest) and look at which cells differ; adjusted residuals beyond about plus or minus 1.96 point to them.

6. Test means with the t-test. For a rating or amount compared between two independent groups, use Welch's version, which does not assume equal spread. Sheets or Excel: =T.TEST(range1, range2, 2, 3). Python: scipy.stats.ttest_ind(a, b, equal_var=False). The cited guide treats the test as safe when both groups have at least 30 respondents, or the data are close to normal. Report the difference in means with its 95 percent confidence interval, not the p-value alone. If the same people rated two things, use the paired test instead (type 1 in T.TEST). For three or more groups, run one-way ANOVA first (jamovi), then pairwise tests with correction.

7. Control for multiple comparisons. With 20 tests on pure noise, about one will pass p below 0.05 by chance. Count how many tests were run (m), including the ones that showed nothing. For a few planned comparisons use Bonferroni: compare each p-value with 0.05 divided by m. For exploratory scans of many tables use Benjamini-Hochberg: sort p-values from smallest to largest, give ranks i, compute (i/m) times Q, where Q is the share of false leads the team accepts; find the largest p below its own value; that one and all smaller count as leads. Python: statsmodels multipletests. Decision rule: a result that passes only without correction is reported as a lead to check, not as a finding.

8. Judge size, not only significance. With large samples a 2-point difference can pass the test and still be useless. For each significant result state the difference in points or scale units and ask the user whether a difference of that size would change the decision.

9. Report with the output template: tables with bases, intervals, test, p-value, correction used, effect size, FACT and INTERPRETATION lines, and limits of the sample. Return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data.

Input: a juice brand ran a Telegram-bot survey, n = 600 (300 in Tashkent, 300 in regional cities). Planned comparison, one of 12 written in advance: share buying packaged juice at least weekly.

| | Tashkent | Regions | Total |
|---|---|---|---|
| Weekly buyers | 150 (50%) | 120 (40%) | 270 |
| Less often | 150 | 180 | 330 |
| Base | 300 | 300 | 600 |

Expected counts: 135 weekly and 165 less often in each column (all above 5). Chi-square = 6.06, 1 degree of freedom, p = 0.014; phi = 0.10. Difference 10 points, 95 percent interval 2 to 18 points. Bonferroni threshold for 12 tests: 0.05 / 12 = 0.0042.
Output: FACT: weekly buying was 50 percent in the Tashkent sample and 40 percent in the regional sample; p = 0.014 uncorrected, which does not pass the corrected threshold. INTERPRETATION: a probable but unconfirmed difference; the interval runs from trivial to large. The sample came from a Telegram bot, so both figures describe bot respondents, not all residents. Recommendation: treat as a lead and re-test in the next wave.

## Common mistakes

- Reporting percentages without the base n, or on groups of a dozen people.
- Running every question against every demographic and presenting the few "significant" results as findings.
- Reading p below 0.05 as "important" or as "95 percent sure the difference is true".
- Using chi-square on percentages instead of counts, or when one person can fall in several cells (multiple-choice sets).
- Reading "not significant" as "no difference" when the groups were small, or a scale mean without its distribution.
- Treating a confidence interval as if it covered sampling bias.

## Quality checklist

- Were the planned comparisons written down before the tables were examined? (yes/no)
- Does every percentage show its base n, with no column under 30 reported? (yes/no)
- Do headline figures carry 95 percent confidence intervals, and were expected counts checked before each chi-square test? (yes/no)
- Is the number of tests stated and a correction applied or the result labelled exploratory? (yes/no)
- Is an effect size or the difference in points given beside every p-value? (yes/no)
- Are sample limits (who could not answer) stated next to the findings? (yes/no)

## Output template

```
SURVEY TABLES AND TESTS (S4-10)
Survey, dates, mode:          Completed n:        After cleaning n:        Tool used:
Sample source and known gaps:
Planned comparisons (written before analysis):

Headline figures
| Question | Answer | % | Base n | 95% CI | FACT / INTERPRETATION |

Group comparisons
| Comparison | Group A (%, mean, n) | Group B (%, mean, n) | Difference and 95% CI | Test | p | Corrected threshold or method | Effect size | Planned or exploratory | Verdict (finding / lead / no evidence) |

Assumption checks (expected counts, group sizes, independence):        Number of tests run in total:
What the differences mean for the decision (INTERPRETATION):
Limits and next step:
```

## Works with

- S1-08 surveys, S2-02 sampling, S2-03 survey sample size: decide who is asked and how many, which sets the precision available here.
- S3-01 questionnaire design (answer formats determine which test applies); S3-07 response styles and S3-09 data-quality checks (run before any table).
- S4-11 cluster analysis and S4-12 latent class segmentation: use cross-tables and these tests to profile segments.
- S4-13 factor analysis and S4-14 key driver analysis: the next step when many rating items are involved.

## Notes for Uzbekistan

- Keep question and answer wording in the original Uzbek or Russian in table labels; add a translation beside it, do not replace it.
- If the questionnaire ran in two languages, tabulate by language once. A gap between language versions may be a translation effect, not a group difference.
- Polite or agreeing answer habits push ratings upward. Compare groups and items with each other and avoid reading the absolute level as approval.
- Telegram-bot samples miss older and rural people. Say so beside every total; do not weight a few regional respondents up to stand for a region, and check that both Tashkent and the regions have enough respondents before comparing them.
- Benchmarks for "big" or "small" effects come from Western research practice. Use the client's own decision threshold instead.

## Sources

- Original: no single source. Standard texts such as Moore, D. S., & McCabe, G. P., Introduction to the Practice of Statistics (W. H. Freeman; paid, not opened); the expected-count rule is quoted from it second-hand.
- Opened: The Analysis Factor, Chi-Square Test of Independence Rule of Thumb. https://www.theanalysisfactor.com/chi-square-test-of-independence-rule-of-thumb/
- Opened: D. Linnell, Statistics with jamovi, 11.2 Chi-Square Test of Independence (open textbook). https://danalinnell.github.io/statistics-with-jamovi/11.2-chi-square-test-of-independence.html
- Opened: M. Foley, Statistics handbook, 5.1 Independent Samples t-Test. https://bookdown.org/mpfoley1973/statistics/ttest.html
- Opened: OpenStax Introductory Statistics 2e, 8.4 A Population Proportion (LibreTexts copy). https://stats.libretexts.org/Bookshelves/Introductory_Statistics/Introductory_Statistics_2e_(OpenStax)/08:_Confidence_Intervals/8.04:_A_Population_Proportion
- Opened: J. H. McDonald, Handbook of Biological Statistics, Multiple comparisons. https://www.biostathandbook.com/multiplecomparisons.html
