---
name: s4-14-key-driver-analysis
description: Estimates which rated attributes are most strongly tied to an outcome such as satisfaction or intention to buy, with regression and relative importance weights. Use to rank improvement priorities.
---

# Regression-based key driver analysis (S4-14)

Key driver analysis asks which attributes (taste, price, delivery, service) go together most strongly with an overall outcome (satisfaction, recommendation, intention to buy again), so the team can decide where improvement would matter most. The base tool is multiple regression, as taught in Hair and colleagues' Multivariate Data Analysis. Its weak point in surveys is that attribute ratings are correlated with each other, and then regression coefficients are unreliable as a ranking. Two remedies divide the explained variance among correlated predictors: averaging each predictor's contribution over all orders of entry (dominance analysis, called LMG in Groemping's 2006 relaimpo package and usually sold as "Shapley value regression" in market research), and Johnson's (2000) relative weights, a fast approximation of the same idea. Tonidandel and LeBreton (2011) recommend both as a supplement to regression and set out their limits. Evidence grade: A. The methods are tested in peer-reviewed research. The weight to put on them is bounded: they describe association in one survey, they are not causal, and the same authors state that weights do not by themselves dictate a course of action.

Working rules for the assistant: answer in the language the user writes in (Uzbek, Russian or English); label every statement as FACT (computed from the data) or INTERPRETATION; when the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- A survey has one overall outcome question and several attribute ratings from the same respondents.
- The team must prioritise among attributes and "what customers say is important" is not enough.
- There are enough respondents for the number of attributes (step 2).

Do not use it when:
- The team wants proof that changing an attribute will change the outcome. That needs an experiment or a before-and-after measurement.
- The outcome is yes/no (bought or not). Linear regression does not fit; logistic regression is needed, and the free relative-weights tool for it is not yet available, so say this is outside the skill.
- There are 20 or more overlapping attributes (reduce them first with S4-13), or the purpose is to choose which variables belong in the model. Relative weights interpret a chosen model; they do not select variables.

## What you need before starting (inputs)

- A cleaned data file (S3-09): one outcome column on a scale (for example 0-10 recommendation) and 4 to 12 attribute ratings, all from the same people. The 4 to 12 range is this skill's working rule.
- The reason each attribute is in the list, the decision the ranking will feed, and which attributes the client can actually change.
- A tool. Excel or Google Sheets handles the regression (LINEST, or Excel's Data Analysis add-in) and correlations (CORREL). Relative weights need more: RWA-Web, a free web tool by Tonidandel that returns weights, confidence intervals and significance tests; R packages rwa and relaimpo; or a short Python script written by the assistant.

## Procedure

1. Fix the outcome and the driver list. Ask: "Which single question is the result we care about, and which rated attributes could explain it?" Choose predictors by reasoning before analysis. Remove attributes that are the outcome in other words (for example "overall quality" when predicting "overall satisfaction").

2. Check sample size. Rule of thumb quoted in the rwa package guide: at least 10 to 15 respondents per predictor and generally more than 100 in total; small samples give wide intervals that bootstrapping cannot fix. Working rule of this skill for ranking six or more drivers: aim for 300 or more, because the intervals of neighbouring drivers otherwise overlap.

3. Describe first (S4-10). For each attribute give mean, spread and its simple correlation with the outcome. An attribute that almost everyone rated the same cannot show up as a driver, however important it is; note this.

4. Check overlap between predictors. Build the predictor correlation matrix (Sheets: CORREL).
   - Pairs above about 0.9 are near-duplicates and must be merged or one removed before weights can be trusted (threshold from the rwa guide). Compute the variance inflation factor for each predictor: regress it on the other predictors and take 1 / (1 - R squared). Cut-offs of 4 or 10 are widely quoted; O'Brien (2007) shows they should not be applied mechanically. Use VIF here as a signal that plain coefficients will mislead, not as a reason to delete variables.
   - Tonidandel and LeBreton's point: there is no statistical cut-off for too much overlap; the question is whether two items measure the same thing. If they do, average them into one (or use S4-13 scores).

5. Run the multiple regression. Sheets: =LINEST(outcome, predictors, TRUE, TRUE); Python: statsmodels OLS; R: lm(). Record R squared (the share of outcome variation the attributes explain together), each coefficient with its sign, and p-values. Working rule: if R squared is under about 0.2, say plainly that the attributes explain little and the ranking is weak. Check a plot of residuals for a strong curve or a few extreme respondents.

6. Compute relative importance. RWA-Web: upload or enter the data, choose multiple regression. R: rwa(df, "outcome", c("a1", "a2")), or relaimpo calc.relimp(model, type = "lmg", rela = TRUE). Output: raw weights that sum to R squared, and rescaled weights that sum to 100 percent of explained variance. Either method is acceptable; they give very similar rankings in most practical data. LMG becomes slow with many predictors; relative weights do not.

7. Put uncertainty on the weights. Request bootstrap 95 percent confidence intervals (the rwa guide suggests 500 or 1,000 resamples; relaimpo calls its intervals exploratory). Decision rule from the same guide: call two drivers different only if their intervals do not overlap. Optional check from Tonidandel and colleagues: add a column of random numbers as a fake predictor; real drivers should clearly exceed its weight.

8. Read weights and coefficients together. The weight says how much of the explained variation is credited to an attribute; it has no direction, so take the sign from the correlation or coefficient. When an attribute has a sizeable weight but a small or negative coefficient, it overlaps with another attribute; report both facts and do not rank on coefficients.

9. Turn the ranking into priorities. Place each attribute by weight (derived importance) and by its current mean rating (performance); the importance-performance grid is a practitioner convention, not part of the cited method. High weight and low rating is a candidate priority. Ask the user which attributes are changeable and at what cost. State that the ranking is association in one survey and name a way to test the top driver (pilot, A/B test, next wave).

10. Report with the template and return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data. Input: a juice brand surveyed 450 buyers. Outcome: likelihood to recommend, 0-10. Six attribute ratings, 1-5. Ratio 75 respondents per predictor. Highest predictor correlation: taste with packaging, 0.62. R squared = 0.48.

| Attribute | Mean rating | Raw weight | Share of explained variance | 95% CI of share | Coefficient sign |
|---|---|---|---|---|---|
| Taste | 4.1 | 0.17 | 35% | 28-43% | + |
| Value for price | 3.2 | 0.10 | 21% | 15-27% | + |
| Availability in shops | 3.4 | 0.08 | 17% | 11-23% | + |
| Packaging | 4.0 | 0.06 | 13% | 8-18% | + (not significant) |
| Naturalness | 3.9 | 0.05 | 10% | 6-16% | + |
| Advertising liked | 3.6 | 0.02 | 4% | 1-9% | + |

Output: FACT: the six attributes explain 48 percent of the variation in recommendation; taste has the largest share and its interval does not overlap with any other. FACT: value, availability and packaging have overlapping intervals, so their order is not established. FACT: packaging has a 13 percent share but a non-significant coefficient; it correlates 0.62 with taste. INTERPRETATION: value for price and availability combine meaningful weight with the lowest ratings and are the candidate priorities; taste is to be protected. Not shown: that raising the availability rating would raise recommendation. Proposed test: track recommendation in districts where distribution is expanded.

## Common mistakes

- Ranking drivers by regression coefficients or by p-values when the attributes are correlated.
- Reading importance weights as "a one-point improvement will raise the outcome by this much".
- Reporting a ranking with no confidence intervals, or including an attribute that restates the outcome, which then "wins".
- Deleting variables only because a VIF passed a cut-off, or ignoring low R squared and presenting a confident ranking.
- Splitting one theme into five items; the credit is shared among them and each looks minor.

## Quality checklist

- Were the outcome and the predictors chosen by reasoning before the analysis? (yes/no)
- Are there at least 10 to 15 respondents per predictor and more than 100 overall? (yes/no)
- Was predictor overlap examined, near-duplicates merged, and R squared reported with its meaning? (yes/no)
- Are relative weights (not coefficients) used for ranking, with the direction of each relationship shown? (yes/no)
- Are bootstrap confidence intervals shown and overlapping drivers treated as tied? (yes/no)
- Does the report say the result is association, with a proposed test of the top priority? (yes/no)

## Output template

```
KEY DRIVER ANALYSIS (S4-14)
Decision served:                  Data (survey, dates, n after cleaning):
Outcome question and scale:       Predictors (count) and respondents per predictor:
Overlap check (highest correlations, VIF, items merged):
Tool and method (relative weights / LMG; bootstrap resamples):          Model fit: R squared =

| Attribute (original wording) | Mean rating | Correlation with outcome | Coefficient (sign, p) | Raw weight | % of explained variance | 95% CI | Rank or tie |

FACT statements:
INTERPRETATION and candidate priorities (weight versus current rating, changeable or not):
What this does not show (causality, sample limits):          Proposed test of the top priority:
```

## Works with

- S4-10 crosstabs and tests: describe every variable first; run the analysis separately for key groups only if each group is large enough.
- S4-13 factor analysis: combine overlapping attributes into scores before this analysis.
- S3-01 questionnaire design: one clear outcome question and a short, non-overlapping attribute list make this method possible.
- S3-07 response styles and S3-09 data-quality checks (straight-lining inflates every correlation and R squared); S2-03 survey sample size (plan respondents per predictor).
- S4-11 cluster analysis and S4-12 latent class segmentation: drivers can differ by segment; repeat within segments when sample allows.

## Notes for Uzbekistan

- Keep attribute wording in the original Uzbek or Russian in the table.
- Polite or agreeing answer habits squeeze ratings into the top of the scale. With little variation, weights become unstable; a 0-10 outcome scale and behaviour-based questions help. Report the spread of each rating, remove straight-liners first and say how many.
- Telegram-bot samples miss older and rural people. Drivers found describe those who answered; do not assume the same ranking for regions or older buyers without data from them.
- Driver rankings published for Western markets are hypotheses here, not benchmarks.

## Sources

- Original: Hair, J. F., Black, W. C., Babin, B. J., & Anderson, R. E. Multivariate Data Analysis (Cengage; paid textbook). Not opened.
- Original: Tonidandel, S., & LeBreton, J. M. (2011). Relative importance analysis: A useful supplement to regression analysis. Journal of Business and Psychology, 26(1), 1-9. Paid; abstract opened at https://pure.psu.edu/en/publications/relative-importance-analysis-a-useful-supplement-to-regression-an/ and its recommendations read as summarised in the rwa guide below.
- Opened: Groemping, U. (2006). Relative importance for linear regression in R: The package relaimpo. Journal of Statistical Software, 17(1), 1-27. Open access (article page and abstract). https://jstatsoft.org/v17/i01
- Opened: rwa R package guide, Evaluating the Tonidandel and LeBreton relative weights analysis method (CRAN). https://ftp.fau.de/cran/web/packages/rwa/vignettes/evaluating-rwa-method-reference.html
- Opened: S. Tonidandel, RWA-Web (free relative weights tool). https://www.scotttonidandel.com/rwa-web
- Opened: O'Brien, R. M. (2007). A caution regarding rules of thumb for variance inflation factors. Quality and Quantity, 41, 673-690 (course copy). https://www.stat.cmu.edu/~brian/valerie/617-2022/617-2021/week05/derivation%20and%20rules%20of%20thumb%20for%20VIF.pdf
