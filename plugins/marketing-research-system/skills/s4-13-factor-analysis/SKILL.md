---
name: s4-13-factor-analysis
description: Reduces a long list of survey rating items to a few underlying themes and shows which items belong together. Use when a questionnaire has many correlated rating questions.
---

# Exploratory factor analysis for reducing rating items (S4-13)

Exploratory factor analysis (EFA) looks at how rating items correlate and proposes a small number of hidden dimensions ("factors") that explain those correlations, for example that eight separate questions all reflect "trust in the seller". It began in psychology and is taught for business research in Hair and colleagues' Multivariate Data Analysis. The procedure here follows two method papers: Fabrigar, Wegener, MacCallum and Strahan (1999), who showed that each analysis choice affects the result and that questionable choices were routine in published work, and Costello and Osborne (2005), who turned this into four practical recommendations and tested them on data. Evidence grade: A. The method and these recommendations are tested in peer-reviewed research, so a well-run analysis deserves weight as a description of how the items hang together in this sample. It is exploratory: the factors are a proposal, names are the analyst's interpretation, and software defaults (principal components, eigenvalue above 1, varimax) are the choices the papers warn against.

Working rules for the assistant: answer in the language the user writes in (Uzbek, Russian or English); label every statement as FACT (computed from the data) or INTERPRETATION; when the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- A survey has roughly 10 or more rating items on one topic (importance, satisfaction, image, attitudes) and the team cannot read them one by one.
- Predictors for driver analysis (S4-14) are highly correlated and need to be combined into a few scores.
- A new scale is being developed and the team needs to see which items work.

Do not use it when:
- The items are yes/no or unordered categories. Ordinary EFA expects ratings on a scale; use S4-12 or cross-tables.
- The sample is small relative to the number of items (step 2).
- The aim is to find groups of people (EFA groups questions; S4-11 and S4-12 group respondents), or to confirm a published scale structure (that is confirmatory factor analysis, a different method).

## What you need before starting (inputs)

- A cleaned data file with the rating items on the same kind of scale, straight-liners removed (S3-09). Straight-lining inflates all correlations and can create one false general factor.
- The item wording in the original language, and any dimensions the team expected when writing the questionnaire.
- A tool. Excel and Google Sheets can produce the correlation matrix (CORREL) but not the analysis. Free options: jamovi (Factor, Exploratory Factor Analysis; point-and-click); R with the psych package; Python with the factor_analyzer package.

## Procedure

1. List the items and the expected themes. Ask the user: "Which questions were meant to measure the same thing?" Write the expectation down before running anything; it is compared with the result in step 8. Reverse-score negatively worded items.

2. Check sample size by the respondent-to-item ratio. Sourced evidence: Costello and Osborne ran samples at 2, 5, 10 and 20 respondents per item; the correct structure was recovered in 10, 40, 60 and 70 percent of samples respectively, and the smallest samples often failed to converge or gave impossible values. Their conclusion is that more is better and that strong data need fewer cases. Working rules of this skill: under 5 per item, do not run; 5 to 10, report as tentative; aim for 10 to 20 or more, and at least about 150 respondents overall.

3. Look at the correlation matrix. An item that correlates below about 0.3 with every other item will not join a factor; two items above about 0.9 are duplicates and one should go (both thresholds are working rules). If almost nothing correlates, stop: there is nothing to reduce.

4. Choose a factor extraction method, not principal components. Costello and Osborne call principal components a data reduction method only; in their example it overstated explained variance. Following Fabrigar and colleagues: maximum likelihood if the items are roughly normally distributed, principal axis factoring if they are clearly not. Skewed 5-point ratings are common in surveys, so principal axis is the default here (jamovi: Extraction, Principal axis; R: fa(x, nfactors = k, fm = "pa")).

5. Decide how many factors, using more than one signal. Do not rely on the "eigenvalue above 1" rule: Costello and Osborne describe it as among the least accurate methods, keeping too many factors in 36 percent of their simulated samples. Use the scree plot (plot eigenvalues and count the points before the curve flattens) and parallel analysis (compares the eigenvalues with those from random data; keep factors that beat random; the paper calls it accurate, and it is now built into jamovi and R psych fa.parallel). Then run the analysis at the suggested number, one fewer and one more. The paper's criterion for the best run: item loadings at 0.30 or above, few or no cross-loadings, and no factor with fewer than three items.

6. Rotate with an oblique method (oblimin or promax), not varimax. Reason given in the paper: factors in social data are usually correlated; oblique rotation allows this and returns nearly the same result as orthogonal rotation if they are not. Read the pattern matrix and the factor correlation table.

7. Clean the item set, one change at a time, re-running after each. Sourced thresholds from Costello and Osborne (who cite Tabachnick and Fidell for 0.32):
   - Loading below 0.32 on every factor: the item does not belong; consider dropping it. Loading 0.32 or higher on two or more factors: a cross-loading item; drop it if other strong items remain.
   - Communality below 0.40: the item shares little with the rest, or points to a factor not covered. A factor with fewer than three items is weak and unstable; five or more items loading 0.50 or higher mark a solid factor.
   Ask the user before dropping an item that matters for the business question; it can be kept and reported on its own.

8. Name and check the factors. Name each from its highest-loading items, in plain words. Compare with the expectations from step 1 and report matches and surprises. A factor that only collects negatively worded items, or items that sat next to each other in the questionnaire, is probably an answering artefact (S3-07).

9. Make scores for later use. Simplest: average the items that belong to each factor (Sheets: AVERAGE across the columns). This skill prefers the simple average over software factor scores because it is transparent and repeatable in the next survey wave (working rule). If two factors correlate very highly (above about 0.8, working rule), consider merging them.

10. Check stability if the sample allows: split the sample randomly in half and repeat; the same items should group together. Report with the template and return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data. Input: a housing developer surveyed 360 people who viewed apartments in the last year: 18 items, "How important was this when choosing?", rated 1-5. Ratio 20 respondents per item.
Process: principal axis factoring; parallel analysis and scree both suggested 4 factors; runs with 3, 4 and 5 compared; oblimin rotation. Two items dropped: "view from the window" (highest loading 0.24) and "has a playground" (0.41 and 0.38 on two factors). Re-run on 16 items.

| Factor (name is INTERPRETATION) | Items | Loadings (FACT) |
|---|---|---|
| Location and transport | 5 | 0.58 to 0.79 |
| Build quality | 4 | 0.55 to 0.81 |
| Payment terms | 4 | 0.61 to 0.84 |
| Trust in the developer | 3 | 0.52 to 0.74 |

Output: FACT: four factors, no cross-loadings at 0.32 or above, communalities 0.41 to 0.72; build quality and trust correlate 0.46. FACT: the team expected "infrastructure" as a separate theme; those items joined location. INTERPRETATION: buyers in this sample do not separate neighbourhood facilities from location. Four averaged scores passed to S4-14.

## Common mistakes

- Accepting software defaults (principal components, eigenvalue above 1, varimax), or running 40 items on 120 respondents.
- Naming a factor after one item or after what the team hoped to find.
- Keeping two-item factors and cross-loading items to save every question.
- Treating the factor structure as proven after one sample, or using EFA output as if it were customer segments.
- Ignoring straight-lining and agreement habits that create a single "everything" factor.

## Quality checklist

- Is the respondent-to-item ratio stated and at least 5, with caution noted below 10? (yes/no)
- Was a factor method (principal axis or maximum likelihood) used, not principal components? (yes/no)
- Was the number of factors chosen with scree and parallel analysis, with neighbouring solutions compared? (yes/no)
- Was an oblique rotation used and the factor correlations reported? (yes/no)
- Are all loadings, communalities and dropped items shown with reasons, and does every factor have at least three items? (yes/no)
- Are factor names marked as interpretation and compared with prior expectations? (yes/no)

## Output template

```
FACTOR ANALYSIS (S4-13)
Purpose:                         Data (survey, dates, n after cleaning):
Items analysed (count, scale):   Respondents per item:
Expected themes (written before analysis):           Tool and settings (extraction, rotation):
Number of factors (scree, parallel analysis, solutions compared, choice and reason):

Pattern matrix (loadings 0.32 and above; items in original language)
| Item | F1 | F2 | F3 | F4 | Communality |

Items dropped and why:
| Factor | Name (INTERPRETATION) | Items | Loading range | Correlation with other factors |
Match with expectations and surprises:       Scores created (how):       Stability check (split half):
Limits and next step (S4-14 / questionnaire revision):
```

## Works with

- S3-01 questionnaire design: plan at least three to five items per expected theme; results feed the next questionnaire version.
- S3-07 response styles and S3-09 data-quality checks: run first; they change the correlations. S2-03 survey sample size: plan respondents per item before fieldwork.
- S4-10 crosstabs and tests: describe items first and compare factor scores between groups after.
- S4-14 key driver analysis: receives the factor scores as predictors with less overlap.
- S4-11 and S4-12: group people, not items; use the original items there unless there is a specific reason.

## Notes for Uzbekistan

- Analyse the items in the wording respondents saw. If the survey ran in Uzbek and Russian, run the analysis once on all data and once per language where sample allows; different structures may signal a translation problem.
- Polite or agreeing answer habits raise all ratings together and push towards one general factor. Check straight-lining first and say so if the first factor dominates.
- Telegram-bot samples miss older and rural people; the structure found describes those who answered. If Tashkent and regional respondents are both present in numbers, compare the item groupings between them before pooling.
- Scales and factor structures published in Western studies may not reproduce here. Treat an imported structure as a hypothesis and let the local data show the grouping.

## Sources

- Original: Hair, J. F., Black, W. C., Babin, B. J., & Anderson, R. E. Multivariate Data Analysis (Cengage; paid textbook). Not opened.
- Original: Fabrigar, L. R., Wegener, D. T., MacCallum, R. C., & Strahan, E. J. (1999). Evaluating the use of exploratory factor analysis in psychological research. Psychological Methods, 4(3), 272-299. Paid; only the abstract was opened, and its extraction advice is reported as cited by Costello and Osborne. https://www.deepdyve.com/lp/doc/EpLJpTpWng
- Opened (full text): Costello, A. B., & Osborne, J. W. (2005). Best practices in exploratory factor analysis: Four recommendations for getting the most from your analysis. Practical Assessment, Research and Evaluation, 10, article 7. Open access; journal page https://openpublishing.library.umass.edu/pare/article/id/1650 was blocked, so the copy read was https://www.stat.cmu.edu/~brian/303-2012-full/303-2011/303-2010/fa/10.1.1.110.9154.pdf
