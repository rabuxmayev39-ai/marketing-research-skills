---
name: s1-09-experiments-ab-tests
description: Decides whether a randomised experiment or A/B test fits, sizes it, and plans a clean run and reading. Use when the team must know if a change causes a difference in real behaviour.
---

# Experiments and A/B tests (S1-09)
A controlled experiment randomly assigns people (or shops, or regions) to a control that stays as it is and a treatment that differs in one respect, then compares real behaviour. Because chance alone decides who gets which version, a difference larger than chance can be attributed to the change. The logic comes from the randomised trial tradition in statistics; its use for websites, apps and advertising was set out by Ron Kohavi and colleagues at Microsoft in a 2007 conference paper and a 2009 journal survey, and in Kohavi, Tang and Xu (2020), Trustworthy Online Controlled Experiments. Evidence grade: A. Randomised experiments are the reference standard for causal claims in peer-reviewed research. The grade holds only when the test has enough volume and a clean control; Kohavi, Deng and Vermeer (2022) show that small, underpowered tests produce results that should not be trusted even when they look significant.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (counts from the test) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The question is causal: does this headline, price, offer, page or script change what people do?
- The change can be shown to some people and withheld from others chosen at random.
- The outcome is a recorded behaviour (click, lead, order, repeat purchase) and there is enough volume to reach the sample size in step 4 within a few weeks.
Do not use it when:
- The team does not yet know what to test. Explore first (S1-04, S1-06, S1-07).
- Volume is too low: the required sample would take months. See the decision rule in step 5.
- The change cannot be withheld (a public launch or announcement) or people in the two groups would see or discuss both versions.
- The question is why. Kohavi and colleagues list this as a limit: the test shows which version wins, not the reason.

## What you need before starting (inputs)
- The decision, the one change to test, and a written prediction (S2-11).
- A baseline: current rate or average of the outcome and typical weekly volume.
- A way to randomise and to record the outcome per unit (ad platform split test, landing-page tool, CRM, a list of shops).
- Agreement in advance on the success measure and on what will be done for each possible result.

## Procedure
1. Check fit. Ask the user: what will be decided, what exactly changes, what behaviour is measured, how many units pass through per week, and what the current rate is. If the answers fail the "do not use" list, say so and propose another method.
2. Fix one primary measure before the test. Kohavi and colleagues call it the overall evaluation criterion and advise agreeing it up front and choosing one that reflects longer-term value (qualified leads or orders rather than clicks). Add one or two guardrail measures that must not get worse (cost per lead, complaints, page speed).
3. Choose the unit of randomisation: the person or user where possible, so each sees one version consistently. Offline, the unit may be a shop, route or district; then the sample size is the number of shops, not the number of buyers.
4. Size the test. For 5% significance (two-sided) and 80% power, Kohavi, Deng and Vermeer give n = 16 x variance / delta squared per variant, where delta is the smallest absolute difference worth detecting. For a rate p, variance = p x (1 - p). Their example: detecting a 10% relative change on a 3.7% conversion rate needs about 41,600 users per variant. Halving delta multiplies n by four.
5. Decide whether to go ahead. Duration = 2 x n / weekly volume. Working rules of this skill: if this exceeds about 8 weeks, do not run the test as planned. Options: test a bolder change (larger delta), use a measure with a higher base rate that still serves the decision, pool traffic sources, or switch to S7-02 regional tests or qualitative evidence, and say clearly that the causal claim will be weaker.
6. Plan the split and the run time. Use 50/50; the 2007 paper shows it minimises run time and that a 95/5 split takes about five times longer. Run at least one to two weeks and in whole weeks, to cover day-of-week differences. Fix the end date now.
7. Check the set-up before trusting it. Where possible run an A/A test (two identical versions): it should show a significant difference only about 5% of the time. Start the real test on a small share to catch faults, then move to the full split without changing anyone's assigned group.
8. Do not stop early because the result looks good. Repeated looks with a stop at the first significant result inflate false positives. Stop early only for harm or a technical fault.
9. Check the sample ratio before reading results. With a 50/50 split, group sizes should be nearly equal; test with a chi-square goodness-of-fit test. Working rule: if p is below 0.001, treat the test as broken (assignment or tracking fault) and do not read the outcome.
10. Analyse. Report counts, rates, the absolute and relative difference, a 95% confidence interval for the difference and the p-value. Apply the same data rules to both groups; removing outliers separately per group creates false positives. Slice by segment only to generate hypotheses, not to hunt for a winner.
11. Judge. A surprising or very large effect is more likely an error than a discovery; the authors advise a stricter threshold (0.01 or 0.005) and a repeat test. A non-significant result in an underpowered test is not proof of no effect. Weigh the lower end of the interval against the cost of the change.
12. Watch for early-period distortions: regular users may react badly or over-eagerly to something new. If the effect shrinks week by week, extend the test or look at new users only.
13. Report with the output template, record the result for S8-08, and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a housing developer's landing page turns 4% of visitors into callback requests. The team wants to test showing the monthly instalment instead of the total price. Smallest lift worth acting on: from 4% to 5% (delta = 0.01). Traffic: about 900 visitors a day from Telegram and Instagram ads.
Sizing: variance = 0.04 x 0.96 = 0.0384. n = 16 x 0.0384 / 0.0001 = 6,144 per variant, 12,288 in total. 12,288 / 900 = 13.7 days, so run 14 days (two whole weeks), 50/50, primary measure callback requests, guardrail share of requests that sales marks as qualified.
Output after 14 days:

| Group | Visitors | Requests | Rate |
|---|---|---|---|
| Control (total price) | 6,300 | 252 | 4.00% |
| Treatment (monthly instalment) | 6,310 | 334 | 5.29% |

FACT: sample ratio 6,300 to 6,310, chi-square = 0.008, no mismatch. Difference 1.29 points (relative +32%); z = 3.45, p below 0.001; 95% interval for the difference 0.6 to 2.0 points. Qualified share: 41% control, 40% treatment. INTERPRETATION: the instalment framing raises requests and the interval's lower end (0.6 points) is still a gain; lead quality did not visibly fall. Because +32% is larger than expected, repeat for one week before changing all advertising. The test does not say why it worked; follow with S1-04.

## Common mistakes
- Running a test with a few hundred visitors and announcing a winner.
- Changing several things at once, then not knowing which one mattered.
- Stopping on the first day the result is significant, or extending until it becomes significant.
- Comparing this month with last month and calling it an A/B test (no randomisation).
- Choosing the success measure after seeing the data.
- Ignoring unequal group sizes, or letting sales staff choose which customers get the new offer.

## Quality checklist
- Was assignment random, and by a stated unit? (yes/no)
- Were the primary measure, the smallest effect of interest and the end date written before the start? (yes/no)
- Was the sample size calculated and reached? (yes/no)
- Did the test run for whole weeks? (yes/no)
- Was the sample ratio checked before reading results? (yes/no)
- Is a confidence interval reported, not only "significant"? (yes/no)
- Were guardrail measures checked? (yes/no)
- Was a surprising result repeated or flagged for repetition? (yes/no)

## Output template
```
EXPERIMENT (S1-09)
Decision this serves:                    Decision owner:
Change tested (one thing):               Prediction written before the test:
Unit of randomisation:                   Split:
Primary measure:                         Guardrail measures:
Baseline rate:           Smallest effect of interest:        n per variant (16 x variance / delta^2):
Planned dates (whole weeks):             A/A or set-up check done:

| Group | Units | Outcomes | Rate |

Sample ratio check (chi-square, p):
Difference (absolute, relative), 95% interval, p-value:      (FACT)
Guardrails:                                                  (FACT)
Reading and recommended action:                              (INTERPRETATION)
Limits (power, duration, who was excluded, what the test cannot explain):
Repeat test needed? Next step:
```

## Works with
- S1-01 research designs: the causal design in that scheme. S2-11: write the prediction first. S2-03: the same logic of sample size and error.
- S7-02 controlled tests (A/B, regional): the measurement-stage use, including regional tests when individual randomisation is impossible. S7-01 KPI hierarchy: source of the primary measure.
- S9-06 creative pre-testing and live testing: experiments on advertising. S1-12 and S6-13: live price tests confirm stated prices.
- S4-10 significance tests: for the analysis. S1-04 or S1-07: to learn why a version won. S8-08 own case studies: file the result.

## Notes for Uzbekistan
- A small site, Telegram channel or shop network may not have the volume a test needs. Do the sizing in step 4 before promising a test, and say openly when volume is too low for one.
- Telegram and Instagram ad audiences are not the whole market; a test result applies to the people who passed through the test.
- Offline tests by shop or district: Tashkent and regional outlets differ, so randomise within each area, and check that sales staff did not pick who got the offer.
- If messages are tested in Uzbek and Russian, keep language as a separate factor or run separate tests; do not let it differ between control and treatment.
- Holidays and seasonal peaks shift behaviour for both groups; avoid starting or ending a test inside them where possible.
- Published benchmarks and success rates come from large Western technology firms. Treat them as hypotheses here.

## Sources
- Original: Kohavi, R., Tang, D., & Xu, Y. (2020). Trustworthy Online Controlled Experiments, a Practical Guide to A/B Testing. Cambridge University Press. Paid book. Not opened.
- Related journal survey: Kohavi, R., Longbotham, R., Sommerfield, D., & Henne, R. M. (2009). Controlled experiments on the web, survey and practical guide. Data Mining and Knowledge Discovery, 18, 140-181. Not opened; the 2007 conference paper below was read instead.
- Opened: Kohavi, R., Henne, R. M., & Sommerfield, D. (2007). Practical guide to controlled experiments on the web. KDD 2007. https://cdn.elezea.com/pdf/GuideControlledExperiments.pdf
- Opened: Kohavi, R. (2007). Practical guide to controlled experiments on the web (conference slides, author's Stanford page). https://ai.stanford.edu/%7Eronnyk/2007-10EmetricsExperimenation.pdf
- Opened: Kohavi, R., Deng, A., & Vermeer, L. (2022). A/B testing intuition busters. KDD 2022. https://airbnb.tech/wp-content/uploads/sites/19/2025/10/ABTestingIntuitionBusters.pdf
