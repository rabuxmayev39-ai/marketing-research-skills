---
name: s2-02-sampling-methods
description: Chooses who is studied and how they are picked using probability, quota or purposive sampling. Use when planning any survey, bot survey or interview study, before sample size is set.
---

# Sampling: probability, quota, purposive (S2-02)

Sampling is the set of decisions about which members of a target population are studied and by what rule they are selected. In probability sampling the researcher controls each unit's chance of selection (simple random, systematic, stratified, cluster designs), which is what allows statistical statements about the population; the classic texts are Cochran, Sampling Techniques (1977) and Groves and colleagues, Survey Methodology (2009). In non-probability sampling that chance is unknown: quota sampling fills fixed numbers of respondents per subgroup, purposive sampling picks cases for what they can tell the study, and convenience sampling takes whoever is easy to reach. The main free reference for the second family is the 2013 report of the AAPOR Task Force on Non-Probability Sampling, which describes non-probability sampling as "a collection of methods" with no single framework.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Probability sampling theory is mathematically proven and long tested. Evidence on non-probability samples is also peer-reviewed, and what it shows is caution: results depend on assumptions that usually cannot be checked. So give full weight to the theory, and limited, clearly labelled weight to any population figure from a quota or opt-in sample.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (how the sample was actually drawn, counts per cell, sources of population shares) versus INTERPRETATION (what the sample can be taken to represent). Never call a quota or bot sample "representative" without saying of whom and on which variables. When the sampling plan is delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A survey, Telegram-bot survey, interview study or group study is being designed and someone must decide who takes part.
- A finished study needs an honest statement of whom its results describe.
- A client asks whether "500 answers from our channel" can stand for the market.

Do not use it when:
- The whole population is small and reachable. Israel's extension guide notes that a census is practical for small populations (about 200 or fewer); survey everyone.
- The question is only how many respondents. That is S2-03 for surveys and S2-04 or S2-05 for qualitative work; this skill comes first.
- The data are behavioural records of all customers (S1-23); there the issue is coverage of the records, not sampling.

## What you need before starting (inputs)
1. Research questions and the subgroups that must be reported separately (S2-01).
2. A definition of the target population: who, where, in what period.
3. Any list of that population (customer base, register, member list) and how complete it is.
4. Available recruitment channels and what kind of people each one reaches.
5. Population shares for possible quota variables from official statistics (S8-07) or other open sources (S8-04, S8-06), with year and source.

## Procedure
1. Fix the claim. Ask the user: "Will the report say what share of the population thinks or does something, or will it explain reasons and patterns?" Shares of a population call for probability sampling or, failing that, a quota design with stated limits. Reasons and patterns call for purposive sampling. The AAPOR report frames this as fitness for purpose.
2. Define the target population and list who is excluded by the plan before any respondent is recruited (age, area, language, no smartphone, not a user of the channel). The AAPOR report uses the term exclusion bias for people with no chance of entering a non-probability sample.
3. Look for a frame. If a usable list exists, draw a probability sample from it. A US government methods brief by Bailey and Brick advises that where a frame exists, even an incomplete administrative list, sampling from it and adjusting for nonresponse is preferable to a non-probability sample. Basic options: simple random (in a spreadsheet add a column =RAND(), sort by it, take the first n rows); systematic (every k-th row after a random start, k = list size / n); stratified (split the list by a key variable such as region or customer size and sample within each part); cluster (sample groups such as bazaars or districts first, then units inside them; cheaper in the field but less precise, see design effect in S2-03).
4. If there is no frame, choose the non-probability type and say why: quota for surveys and bot surveys; purposive for interviews and groups; referral (snowball) for hidden or rare groups, noting that referrals bring similar people and miss isolated ones; convenience only for pretests (S3-02).
5. Design quotas. Steps as given in an open university textbook: pick the categories that matter, form subgroups, set a number for each, recruit until each is filled. Working rules of this skill: choose two to four variables that are related both to who answers and to the topic (area, age, gender, category usage); take target shares from a named source; use interlocked cells (for example area by age) when the variables interact and the sample is large enough, otherwise separate marginal quotas; do not plan a reporting cell below the size S2-03 gives for the precision wanted.
6. Spread recruitment across several sources and record the source of every respondent. A Pew Research Center comparison of online non-probability samples found that matching demographic benchmarks did not guarantee accurate results; what matters is whether respondents in a cell resemble the people of that cell who did not take part.
7. Monitor in the field. Track completed counts per cell daily, close full cells, and redirect recruitment to empty ones. Do not relax a quota silently; record any change.
8. Weight with care. Working rule: weight = target share / achieved share per cell; report the largest weight; treat any cell that needs a weight above about 2 as a field failure to report, not to hide. The AAPOR report states that such adjustment removes bias only if, inside each cell, taking part is unrelated to the answer.
9. For purposive samples, write the selection criteria and the contrasts wanted (for example user and lapsed user, Tashkent and region), then hand over to S2-06 for the strategy and to S2-04 or S2-05 for numbers.
10. State precision honestly. AAPOR's guidance is that a margin of sampling error applies to probability samples; for opt-in samples it is not statistically valid. For quota samples give the S2-03 figure only as an approximate guide, labelled as such.
11. Write the disclosure. The AAPOR report calls transparency essential and puts a heavier duty on non-probability studies: describe how people were selected, recruited and weighted, and who was left out. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data; the population shares below are made up for the arithmetic. Input: a juice brand plans a Telegram-bot survey of 600 adults who bought packaged juice in the last month, in Tashkent city and two regions, plus interviews.

```
SAMPLING PLAN
Frame: none (no list of juice buyers) -> quota sample, non-probability.
Quota variables: area (Tashkent 50%, regions 50%) x age (18-29 35%, 30-44 40%, 45+ 25%)
Cells (n = 600):        18-29   30-44   45+    Total
  Tashkent               105     120     75     300
  Regions                105     120     75     300
  Total                  210     240    150     600
Excluded by design: no Telegram; under 18; other regions.              FACT
Achieved by age:  18-29 250 | 30-44 260 | 45+ 90 | total 600           FACT
Weights: 210/250 = 0.84 | 240/260 = 0.92 | 150/90 = 1.67
Reading: the 45+ group was hard to reach by bot; 90 people speak for a
  planned 150, and they are the 45+ who use Telegram.          INTERPRETATION
Interviews: purposive, 12 buyers = 6 Tashkent + 6 regions, each 3 regular + 3 lapsed.
```
Arithmetic check: 600 x 0.35 = 210, 600 x 0.40 = 240, 600 x 0.25 = 150, sum 600; each area gets half: 105 + 120 + 75 = 300; achieved 250 + 260 + 90 = 600; weighted back 250 x 0.84 = 210, 260 x 0.923 = 240, 90 x 1.667 = 150; interviews (3 + 3) x 2 = 12.

## Common mistakes
- Calling a quota sample representative because its age and gender shares match the population.
- Treating a large number of answers as a cure for a biased channel; more of the same people does not add the missing ones.
- Quotas on variables that are easy to fill but unrelated to the topic.
- Population shares taken from memory, with no source or year.
- Heavy weights applied quietly to a cell with a handful of respondents.
- Reporting a margin of error for a bot survey as if it were a random sample.
- For interviews, recruiting only through the client's loyal customers and calling it purposive.

## Quality checklist
- Is the target population defined, with a written list of who is excluded?
- Was a frame looked for, and a probability draw used where one exists?
- Is the sampling type named and justified by the kind of claim the report will make?
- Do quota targets have a source and year, and are the variables linked to the topic?
- Are recruitment sources recorded per respondent and cell counts tracked?
- Are weights, the largest weight and unfilled cells reported?
- Does the report avoid a plain margin of error for non-probability data and state its limits?

## Output template
```
SAMPLING PLAN - [project] - [date]
Claim needed: population shares / patterns and reasons
Target population: who | where | period
Frame: exists (source, completeness) / none
Sampling type: simple random / systematic / stratified / cluster / quota / purposive / referral | Why: ...
Excluded by design: ...
QUOTA TABLE: variable | category | target share (source, year) | target n | achieved n | weight
Recruitment sources: source | share of completes
PURPOSIVE CRITERIA (qualitative): must-have | contrasts | planned n (S2-04, S2-05)
Precision statement: ... (approximate if non-probability)
Disclosure: selection | recruitment | weighting | who is missing
```

## Works with
- S2-01 research brief: supplies the subgroups and claims. S2-03 survey sample size: numbers per cell, design effect, approximate margins.
- S2-04 saturation, S2-05 information power, S2-06 purposive sampling strategies: numbers and case selection for qualitative samples.
- S2-13 total survey error: coverage and nonresponse sit beside sampling error. S3-09 data-quality checks: remove careless or duplicate bot answers before weighting.
- S1-08 surveys, S1-04 interviews, S1-05 focus groups, S1-18 B2B key informants: the methods that use the plan. S4-10 crosstabs and tests: analysis with weights.
- S8-03 research validity in emerging markets, S8-04, S8-06, S8-07: sources for population shares and channel coverage.

## Notes for Uzbekistan
- Telegram-bot and other online samples miss older and rural people and anyone outside the channels used for recruitment. Name these groups in the exclusion list every time, and plan phone or face-to-face top-ups when they matter to the decision.
- Set quotas for Tashkent and for regions separately and report them separately before combining.
- Offer the survey in Uzbek (Latin and Cyrillic where needed) and Russian, and record the language chosen; language can work as a quota or checking variable.
- Take population shares from official open data with the year stated; do not assume them.
- Referral recruitment through family and neighbourhood networks is convenient and narrows the sample; record chains.
- Polite or agreeing answer habits are a measurement issue (S3-07), not fixed by sampling. The cited studies of online samples were done mainly in the United States; how they transfer is a hypothesis.

## Sources
- Original: Cochran, W. G. (1977). Sampling Techniques (3rd ed.). Wiley. Paid book; not opened.
- Original: Groves, R. M., Fowler, F. J., Couper, M. P., Lepkowski, J. M., Singer, E., & Tourangeau, R. (2009). Survey Methodology (2nd ed.). Wiley. Paid book; not opened.
- Opened: Baker, R., et al. (2013). Report of the AAPOR Task Force on Non-Probability Sampling. Free; first third read in full, rest not. https://www.aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13.pdf
- Opened: AAPOR. Margin of Sampling Error. https://aapor.org/wp-content/uploads/2023/01/Margin-of-Sampling-Error-508.pdf
- Opened: AAPOR statement on credibility intervals and the margin of sampling error (no valid margin for opt-in samples). https://aapor.org/statements/understanding-a-credibility-interval-and-how-it-differs-from-the-margin-of-sampling-error-in-a-public-opinion-poll/
- Opened: Kennedy, C., et al. (2016). Evaluating Online Nonprobability Surveys. Pew Research Center. https://www.pewresearch.org/methods/2016/05/02/evaluating-online-nonprobability-surveys/
- Opened: Bailey, M., & Brick, J. M. (2024). Probability and Nonprobability Samples in Surveys (OPRE Report 2024-182). https://acf.gov/sites/default/files/documents/opre/opre_nonprobability_samples_brief_september2024.pdf
- Opened: Chen, V. T., et al. The Craft of Sociological Research, section 6.4 Nonprobability sampling (open textbook, CC BY-NC-SA). https://viva.pressbooks.pub/sociology-research-methods/chapter/6-4-nonprobability-sampling/
- Opened: Israel, G. D. (1992, rev. 2009). Determining Sample Size. University of Florida IFAS Extension (census for small populations). https://ask.ifas.ufl.edu/publication/PD006/pdf
