---
name: s2-03-survey-sample-size
description: Calculates how many survey respondents are needed for a wanted margin of error per segment or to compare two groups. Use when sizing or judging any survey or bot survey.
---

# Survey sample size and margin of error (S2-03)

This method turns a wanted precision into a number of completed questionnaires, and turns an achieved number back into a margin of error. The core formulas come from sampling theory as set out in William Cochran's Sampling Techniques (1977): sample size for a proportion or a mean, and the finite population correction for small populations. The design effect, associated with Leslie Kish, adjusts for weighting and clustering. For comparing two groups, the logic of statistical power and the conventional effect sizes come from Jacob Cohen's Statistical Power Analysis for the Behavioral Sciences (1988).

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The formulas are mathematically derived and long tested, so the arithmetic deserves full weight when its assumption holds: every member of the population had a known chance of selection. With quota, bot or opt-in samples that assumption fails; AAPOR states that a margin of sampling error applies to probability samples only. For such samples treat every margin from this skill as an approximate planning guide, and say so in the report. Sampling error is also only one error among several (S2-13).

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (inputs, formulas, computed numbers) versus INTERPRETATION (what the precision means for the decision). Show every calculation so a person can redo it in a spreadsheet, and round sample sizes up. When the numbers are delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- Planning a survey and someone asks "how many respondents do we need?".
- A survey is finished and results need a margin, or two groups need to be compared.
- A client wants results split by segment and the budget must be checked against that.

Do not use it when:
- The study is qualitative. Use S2-04 and S2-05; these formulas do not apply to interviews.
- The population is small enough to ask everyone (Israel's guide suggests a census is practical at about 200 or fewer), or the real problem is who is reachable, not how many (S2-02). A larger biased sample is still biased.
- The analysis is a model (conjoint, segmentation, regression); those have their own rules (S1-10, S4-11, S4-14). Israel's guide notes that regression-type analyses typically need 200 to 500 cases.

## What you need before starting (inputs)
1. The estimates that matter most (usually a few proportions) and the segments that must be reported separately (S2-01).
2. Wanted precision e (for example 0.05 = plus or minus 5 percentage points) and confidence level (95% is the usual standard).
3. An expected proportion p from past data, or 0.5 if unknown. Israel's guide explains that 0.5 is maximum variability and gives the largest, safest sample.
4. Population size N if it is small or comes from a list.
5. Sampling design from S2-02: weighting or clustering expected, and the expected completion rate.
6. For group comparisons: the two expected proportions, or the smallest difference worth acting on.

## Procedure
1. Ask what will be reported and decided. "Which numbers will the decision rest on, and for which segments?" Sample size is set by the smallest segment that must be read on its own, not by the total. AAPOR's explainer gives the scale: a survey of 1,000 with a margin of 3 points has a margin of about 6.9 points for a subgroup of 200.
2. Compute the base size for a proportion (Cochran's formula as given in Israel's guide): n0 = Z^2 x p x (1 - p) / e^2, with Z = 1.96 for 95% confidence. With p = 0.5 and e = 0.05 this gives 385. For a mean: n0 = Z^2 x variance / e^2, with e in the units of the measure.
3. Apply the finite population correction when a list or small market is sampled: n = n0 / (1 + (n0 - 1) / N). Israel's example: N = 2,000 farmers turns 385 into 323. Working rule: apply it whenever n0 is more than about 5% of N; otherwise it changes almost nothing.
4. Apply the design effect. Deff is the ratio of the variance under the real design to the variance of a simple random sample of the same size; effective sample size = n / deff, so plan n = n0 x deff. Two usual sources: weighting, where Kish's approximation is deff = 1 + (standard deviation of weights / mean weight)^2; and clustering, deff = 1 + (m - 1) x rho, with m respondents per cluster and rho the similarity within clusters. Valliant's vignette warns that deff differs by variable and that Kish's shortcut can mislead in complex designs. Working rule: if nothing is known, plan with deff 1.2 to 1.5 for a weighted quota sample and say it is an assumption.
5. Repeat steps 2 to 4 for each segment that must be reported, then add up. If the total is unaffordable, show the client the trade: fewer segments, or a wider margin per segment. Israel's guide cites Sudman's rule of thumb of at least 100 per major subgroup and 20 to 50 per minor subgroup.
6. For comparing two groups (segments, waves, test and control), use power. Per group: n = (Z_alpha/2 + Z_beta)^2 x [p1(1 - p1) + p2(1 - p2)] / (p1 - p2)^2, with 1.96 for 95% confidence and 0.84 for 80% power. Published example: 15% versus 25% needs about 248 per group. If no expected proportions exist, use Cohen's effect size h = 2 x asin(sqrt(p1)) - 2 x asin(sqrt(p2)); his conventions are 0.2 small, 0.5 medium, 0.8 large, and n per group = 2 x ((Z_alpha/2 + Z_beta) / h)^2, about 393 for a small effect. The same difference in points costs different samples at different levels: 50% versus 55% needs about 1,565 per group, 5% versus 10% about 424. Multiply by deff as in step 4.
7. Convert completes into invitations: invitations = n / expected completion rate. The sizes above are completed responses. Israel's guide notes that many researchers add about 10% for people who cannot be contacted and about 30% for nonresponse; with bots use the completion rate from the pilot.
8. After fieldwork, compute the achieved margin for each key figure and segment: MOE = Z x sqrt(deff x p x (1 - p) / n), times sqrt((N - n) / (N - 1)) for a finite population. Report it in percentage points.
9. Write the precision statement. For probability samples: the margin at 95% confidence. For quota or bot samples: "approximate margin, calculated as if the sample were random; the true uncertainty is larger and cannot be calculated". Return to research-orchestrator.

Spreadsheet formulas (Excel or Google Sheets; put inputs in named cells):
```
Z for confidence:      =NORM.S.INV(1-(1-conf)/2)            conf 0.95 -> 1.96
Base size, proportion: =ROUNDUP(Z^2*p*(1-p)/e^2,0)
Finite population:     =ROUNDUP(n0/(1+(n0-1)/N),0)
With design effect:    =ROUNDUP(n0*deff,0)
Kish weighting deff:   =1+(STDEV.P(weights)/AVERAGE(weights))^2
Margin of error:       =Z*SQRT(deff*p*(1-p)/n)*SQRT((N-n)/(N-1))   drop last term if N is large
Two groups, per group: =ROUNDUP((NORM.S.INV(1-alpha/2)+NORM.S.INV(power))^2*(p1*(1-p1)+p2*(1-p2))/(p1-p2)^2,0)
Cohen h:               =2*ASIN(SQRT(p1))-2*ASIN(SQRT(p2))
Invitations:           =ROUNDUP(n/completion_rate,0)
```

## Worked example
INVENTED EXAMPLE - not real data. Input: a juice brand wants a Telegram-bot survey with results for three age segments; a flour mill wants a phone survey from its list of 1,200 bakeries.

```
A. Juice, total only, e = 0.05, p = 0.5, 95%:  n0 = 3.8416 x 0.25 / 0.0025 = 384.16 -> 385
B. Three segments at e = 0.05: 3 x 385 = 1,155 -> over budget.
   Client accepts e = 0.08 per segment: n0 = 0.9604 / 0.0064 = 150.06 -> 151
C. Weighting expected, deff 1.3 (assumption): 151 x 1.3 = 196.3 -> 197 per segment
   Total = 3 x 197 = 591. Margin for total: 1.96 x sqrt(1.3 x 0.25 / 591) = 0.046 -> 4.6 points
D. Pilot completion rate 20%: invitations = 591 / 0.20 = 2,955
E. To detect 30% vs 40% between two segments (95%, 80% power):
   7.84 x (0.21 + 0.24) / 0.01 = 352.8 -> 353 per group before deff.
   Planned 197 per segment is too few for this comparison.                    FACT
F. Flour mill, N = 1,200, e = 0.05: n = 385 / (1 + 384 / 1200) = 385 / 1.32 = 291.7 -> 292
Statement for the juice survey: quota sample, margins approximate.   INTERPRETATION
```
Arithmetic check: 1.96^2 = 3.8416; 3.8416 x 0.25 = 0.9604; 0.9604 / 0.0025 = 384.16; 0.9604 / 0.0064 = 150.06; 151 x 1.3 = 196.3; 3 x 197 = 591; 1.3 x 0.25 / 591 = 0.00055, square root 0.02345, x 1.96 = 0.046; 591 / 0.2 = 2,955; (1.96 + 0.84)^2 = 7.84, 0.3 x 0.7 = 0.21, 0.4 x 0.6 = 0.24, 7.84 x 0.45 = 3.528, / 0.01 = 352.8; 384 / 1200 = 0.32, 385 / 1.32 = 291.7.

## Common mistakes
- Sizing the total and then reading segments of 40 people as if they had the total's margin.
- Believing sample size depends on population size for large populations; above a few tens of thousands it barely does.
- Quoting "plus or minus 5%" for a bot or quota survey with no warning, or ignoring weights: a heavily weighted 600 can carry the information of far fewer.
- Counting invitations or started questionnaires as the sample instead of completes; rounding down; using a hopeful guess for p instead of 0.5.
- Declaring two segments different because the percentages differ, without the size needed to detect that gap.

## Quality checklist
- Are precision, confidence level and p stated with reasons?
- Was the size computed per reported segment, not only in total?
- Was the finite population correction used where the population is small or listed, and is a design effect included and labelled as measured or assumed?
- For planned comparisons, was a power calculation done?
- Are completes, not invitations, the unit, with a completion rate from a pilot?
- Does the report give margins in points and mark them approximate for non-probability samples?

## Output template
```
SAMPLE SIZE NOTE - [project] - [date]
Key estimates: ... | Segments reported separately: ...
Inputs: confidence ... (Z ...) | e ... | p ... | N ... | deff ... (measured / assumed)
Segment | n0 | after FPC | x deff | planned completes | expected margin (points)
Total completes: ... | Completion rate: ... | Invitations: ...
Comparisons: groups | p1 | p2 | power | n per group needed | planned n | enough? (y/n)
Sampling type (S2-02): probability / quota / opt-in
Precision statement for the report: ...
After fieldwork: figure | segment | n | weight deff | achieved margin
```

## Works with
- S2-02 sampling: decides the design and whether margins are exact or approximate. S2-01 research brief: names the segments and key estimates.
- S2-13 total survey error: coverage, nonresponse and measurement error that this method does not count. S3-09: data-quality removals reduce n; plan a reserve.
- S1-08 surveys and S1-22 brand health tracking: main users. S1-09 and S7-02 experiments and controlled tests: use step 6. S7-03 before and after tracking: wave-to-wave comparisons need the two-group size.
- S4-10 crosstabs and significance tests: the analysis side of the same logic. S1-10, S1-11, S4-11, S4-14: methods with their own size rules.
- S2-04 and S2-05: the qualitative counterparts.

## Notes for Uzbekistan
- Telegram-bot and online panels miss older and rural people; a formula cannot repair that. Say whom the margin describes (for example Telegram users aged 18 to 44 in the sampled areas).
- Take population or market size N from official open data or the client's list, with year and source; do not guess it.
- Polite or agreeing answers shift results in one direction and are not covered by any margin of error (S3-07).
- Run the questionnaire in Uzbek and Russian. If results are compared by language, or Tashkent and regions are read separately, size each group as its own segment.

## Sources
- Original: Cochran, W. G. (1977). Sampling Techniques (3rd ed.). Wiley. Paid book; not opened.
- Original: Cohen, J. (1988). Statistical Power Analysis for the Behavioral Sciences (2nd ed.). Erlbaum. Paid book; not opened.
- Opened: Israel, G. D. (1992, rev. 2009). Determining Sample Size. University of Florida IFAS Extension (Cochran formulas, correction, examples, subgroup rules). https://ask.ifas.ufl.edu/publication/PD006/pdf
- Opened: Zipf, G., & Valliant, R. Design Effects and Effective Sample Size, PracTools package vignette (deff definitions, Kish formula, cautions). https://cran.nics.utk.edu/cran/web/packages/PracTools/vignettes/Design-effects.html
- Opened: Ford, C. pwr package vignette (Cohen's conventional effect sizes; two-proportion examples). https://cran.itam.mx/web/packages/pwr/vignettes/pwr-vignette.Rmd
- Opened: Select Statistical Services. Comparing two proportions, sample size (formula; 15% versus 25% example). https://select-statistics.co.uk/?p=2098
- Opened: AAPOR. Margin of Sampling Error (subgroup margins; probability samples only). https://aapor.org/wp-content/uploads/2023/01/Margin-of-Sampling-Error-508.pdf
- Not sourced, standard formulas: margin of error with finite population term; invitations = completes / completion rate; h-based size formula (checked against the pwr vignette's results).
