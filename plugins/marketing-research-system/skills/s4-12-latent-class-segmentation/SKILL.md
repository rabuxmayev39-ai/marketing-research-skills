---
name: s4-12-latent-class-segmentation
description: Finds hidden segments in categorical survey answers with a statistical model that gives each respondent a membership probability. Use when segmentation questions are yes/no or multiple-choice.
---

# Latent class analysis for segmentation (S4-12)

Latent class analysis (LCA) assumes the sample is a mix of a few unobserved groups ("classes"), each with its own pattern of answer probabilities, and estimates how many groups there are, how large each is, and how likely each respondent is to belong to each. Wedel and Kamakura (2000) are the standard marketing reference for model-based (mixture) segmentation. Practical guidance used here comes from Weller, Bowen and Faubert (2020) and from the simulation study of Nylund, Asparouhov and Muthen (2007) on choosing the number of classes. Unlike k-means (S4-11), LCA handles categorical answers directly, gives fit statistics for comparing solutions, and reports uncertainty of assignment. Evidence grade: A. The method and its selection criteria are tested in peer-reviewed simulation research, so the statistics deserve weight. The classes remain a model of the data: a 2025 review of 304 published analyses found that many reports skipped basic checks, so a solution earns trust only when the checks below are shown.

Working rules for the assistant: answer in the language the user writes in (Uzbek, Russian or English); label every statement as FACT (computed from the data) or INTERPRETATION; when the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- Segmentation variables are categorical: yes/no needs, which-of-these choices, behaviour categories, short ordinal scales.
- The team wants a defensible answer to "how many segments" and wants to know how sure each assignment is.
- The sample is in the hundreds (step 2).

Do not use it when:
- The sample is under about 300. Describe patterns with cross-tables (S4-10) and call types hypotheses.
- All variables are continuous ratings and the team has no R or Python user. Cluster analysis (S4-11) is simpler. (The continuous version, latent profile analysis, follows the same logic.)
- There are dozens of indicators. Models become unstable; select indicators first.

## What you need before starting (inputs)

- The decision the segments serve (from S5-09) and 4 to 12 indicator questions chosen for it (the range is this skill's working rule).
- A cleaned file, one row per respondent (S3-09 checks done), with descriptors (region, size, channel) kept aside for profiling.
- A tool. Spreadsheets cannot fit this model. Free options: R with the poLCA package (Linzer and Lewis 2011); jamovi with the snowRMM module for point-and-click; Python packages exist (for example StepMix). The procedure assumes poLCA; the assistant can write the script and the user runs it.

## Procedure

1. Choose indicators. Ask: "Which questions describe what buyers need or do, in categories?" Recode each as whole numbers starting at 1 (poLCA requires this). Merge answer categories chosen by very few people. Avoid two indicators that are the same question in different words: the model assumes that, inside a class, answers to different indicators are unrelated (local independence), and near-duplicates break this.

2. Check sample size. Sourced guidance, as collected in the 2025 review: Weller and colleagues and Killian and colleagues give 300 as a minimum; other tutorials say over 400 or at least 500; the review itself suggests 500 as a general guide, with less possibly enough for simple models with well-separated classes. It also reports that BIC tends to pick too few classes when n is under 300. Decision rule: under 300, do not run; 300 to 500, run with few indicators and report as provisional.

3. Fit models with 1, 2, 3, ... classes, adding one at a time, usually up to 6. Always include the 1-class model as the baseline. Use many random starts for each (tutorial advice cited in the review: 50 to 100 or more) because the estimation can stop at a poor solution. R: poLCA(cbind(q1, q2, q3, q4) ~ 1, data = d, nclass = 3, nrep = 50, maxiter = 5000). Check that the best log-likelihood was reached by several starts; if only once, raise nrep.

4. Compare fit. Record for each model: log-likelihood, BIC, AIC, number of parameters, smallest class size.
   - BIC: lower is better. In Nylund and colleagues' simulation it was the most consistent information criterion; AIC tended to choose too many classes. Plot BIC against the number of classes and look for the minimum or the point where the curve flattens.
   - Bootstrap likelihood ratio test (BLRT): compares k classes with k-1; it was the most reliable indicator in that simulation but is slow, so the authors suggest using BIC first and running BLRT only on the two or three best candidates. poLCA has no built-in BLRT; if it is not available, say so and rely on BIC plus the checks below.
   - Keep at most three candidate solutions for close inspection.

5. Inspect the candidates. For each look at:
   - Class sizes. Published cut-offs differ: at least 50 cases, or at least 5 percent of the sample; Weller and colleagues note there is no agreed rule. Working rule here: flag any class below both.
   - Item-response probabilities: for each class, the probability of each answer. A class is clear when most probabilities are high or low (one tutorial uses above 0.70 or below 0.30) and classes differ from each other on several indicators.
   - Classification quality: average posterior probability of the assigned class (tutorials use above 0.70 as acceptable) and relative entropy (above 0.80 is commonly called good; Weller and colleagues warn that below 0.60 is hard to defend). Entropy judges how cleanly people are assigned; do not use it to choose the number of classes.

6. Choose the model. Decision rule: prefer the lowest-BIC model unless it contains a tiny or uninterpretable class; then take the next best. If two models fit about equally, choose the one with fewer classes. Ask the user whether the company would treat each class differently; if two classes would get the same treatment, the simpler model is enough.

7. Assign and profile. Give each respondent the class with the highest posterior probability and keep that probability in the file. Cross-tabulate classes against descriptors and outcomes with S4-10 tests. Because assignment is uncertain, treat differences driven by respondents with low probabilities (under 0.70) with caution; the tutorials recommend "three-step" corrections for formal work, which is beyond this skill.

8. Validate. If the sample allows, split it randomly in half and fit the chosen number of classes in each; the same patterns should appear. Check that classes differ on at least one variable not used as an indicator.

9. Name classes by the defining pattern, report with the template (all models tested, not only the winner), hand over to S5-09, and return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data. Input: a flour mill surveyed 520 bakery owners by phone. Seven indicators: buys on deferred payment (yes/no), orders weekly or more (yes/no), uses more than one flour grade (yes/no), switched supplier in the last year (yes/no), asks for a quality certificate (yes/no), main product (bread / pastry / mixed), bag size (25 kg / 50 kg).

| Classes | BIC | Smallest class | Entropy |
|---|---|---|---|
| 1 | 4310 | 100% | n/a |
| 2 | 4188 | 37% | 0.79 |
| 3 | 4121 | 14% (73) | 0.84 |
| 4 | 4133 | 6% (31) | 0.77 |

Output: FACT: BIC was lowest for three classes; average posterior probabilities were 0.93, 0.91 and 0.88; the smallest class had 73 respondents. Class 1 (46 percent): deferred payment 0.86, switched supplier 0.71. Class 2 (40 percent): one grade 0.88, certificate 0.74, switched 0.12. Class 3 (14 percent): several grades 0.91, pastry 0.67. INTERPRETATION: three usable groups, provisionally "cash-flow", "consistency" and "range" buyers; n is near the lower guidance so sizes are approximate. Next: S5-09.

## Common mistakes

- Fitting only the number of classes the team expected, with no 1-class baseline and no table of alternatives.
- Too few random starts, so the reported solution is a local optimum; or choosing the number of classes by entropy or by AIC alone.
- Keeping a class of a dozen respondents because it has an attractive story.
- Treating assigned class as a known fact and ignoring low membership probabilities.
- Using near-duplicate indicators, which creates artificial classes.

## Quality checklist

- Were indicators chosen for the decision and checked for near-duplicates? (yes/no)
- Is the sample at least 300, and is the result marked provisional if under 500? (yes/no)
- Were models from 1 class upward fitted with many random starts, and is the full fit table shown? (yes/no)
- Was the number of classes chosen mainly by BIC (and BLRT if available), not by entropy? (yes/no)
- Are class sizes, item-response probabilities and classification quality reported? (yes/no)
- Was the solution checked on a split sample or on variables not used as indicators? (yes/no)

## Output template

```
LATENT CLASS SEGMENTATION (S4-12)
Decision served:                 Data (survey, dates, n after cleaning):
Indicators (name, categories):              Tool, random starts, missing-data handling:

Model comparison
| Classes | Log-likelihood | Parameters | BIC | AIC | BLRT p (if run) | Smallest class % (n) | Entropy |
Chosen model and reason:

Class profiles
| Class (named by pattern) | Size % (n) | Avg posterior probability | Key item-response probabilities | Descriptors that differ (test, p) | FACT / INTERPRETATION |

Validation (split sample, external variables):
Limits (sample source, n versus guidance, uncertain assignments):        Hand-over: S5-09
```

## Works with

- S5-09 needs-based segments: sets the decision before and selects targets after; S6-01 segmentation-targeting-positioning follows.
- S2-03 survey sample size and S3-01 questionnaire design: plan categorical indicators and enough respondents before fieldwork.
- S3-09 data-quality checks and S3-07 response styles: run before modelling. S5-10 personas: optional way to present a verified class.
- S4-10 crosstabs and tests: profile classes. S4-11 cluster analysis: alternative for numeric ratings; if both are run, compare assignments.

## Notes for Uzbekistan

- Keep indicator wording in the original Uzbek or Russian in the profile table.
- Yes/no and which-of-these questions are less affected by polite, agreeing answers than agreement scales, which is one reason to prefer them as indicators; still check for respondents who said yes to everything.
- Telegram-bot samples miss older and rural people; class sizes then describe bot respondents only. For business buyers (bakeries, shops), plan phone or visit samples. If one class is almost entirely Tashkent or entirely regional, check whether it reflects needs or only local supply and prices.
- Sample-size and fit guidance comes from simulations and Western, mostly psychology, studies. Treat thresholds as guides and classes as hypotheses to confirm locally.

## Sources

- Original: Wedel, M., & Kamakura, W. A. (2000). Market Segmentation: Conceptual and Methodological Foundations (2nd ed.). Kluwer Academic. Paid book. Not opened.
- Weller, B. E., Bowen, N. K., & Faubert, S. J. (2020). Latent class analysis: A guide to best practice. Journal of Black Psychology, 46(4), 287-311. Not opened directly; its recommendations are reported here as summarised in the review below.
- Opened: Nylund, K. L., Asparouhov, T., & Muthen, B. O. (2007). Deciding on the number of classes in latent class analysis and growth mixture modeling. Structural Equation Modeling, 14(4), 535-569 (authors' copy). https://www.statmodel.com/download/LCA_tech11_nylund_v83.pdf
- Opened: Sorgente, A., et al. (2025). A systematic review of latent class analysis in psychology. Behavior Research Methods, 57, 301 (open access; read in the university repository copy, first 100,000 characters). https://publicatt.unicatt.it/retrieve/bc43fff2-3c94-4024-a53b-a890f1f74cbe/unpaywall-bitstream-1290583696.pdf
- Opened: Linzer, D. A., & Lewis, J. B. (2011). poLCA: An R package for polytomous variable latent class analysis. Journal of Statistical Software, 42(10) (abstract page). https://www.jstatsoft.org/article/view/v042i10
