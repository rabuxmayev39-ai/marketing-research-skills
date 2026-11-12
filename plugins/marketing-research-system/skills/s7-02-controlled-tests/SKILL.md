---
name: s7-02-controlled-tests
description: Proves what a campaign added by comparing people or regions that got it with comparable ones that did not. Use when a client needs proof that the activity caused the change.
---

# Controlled tests (A/B, regional) (S7-02)

A controlled test measures the effect of marketing activity by comparing a group that was exposed to it (the test group) with a comparable group that was not (the control group, also called a hold-out). The difference between them, after allowing for how each stood before, is the incremental effect: what happened because of the activity and would not have happened without it. The groups can be people (a random part of a customer list receives nothing) or places (some regions get the campaign and others do not). The logic is that of the randomised experiment; for online use it is set out by Ron Kohavi, Diane Tang and Ya Xu (2020), and for regions by Jon Vaver and Jim Koehler of Google (2011), who call the design a geo experiment. This skill covers proving the effect of live activity. Designing an experiment as a research method and calculating its sample size belong to S1-09.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Kohavi and colleagues place randomised controlled experiments near the top of the hierarchy of evidence, above observational comparisons and far above expert opinion. A study of 15 advertising experiments at Facebook (Gordon and colleagues) found that non-experimental methods often failed to reproduce the experimental result, and in half the studies were off by roughly a factor of three. The grade applies to randomised tests. The listed limit is real: the method needs a comparable control, and a regional comparison with two or three areas chosen by hand is a weaker, quasi-experimental design whose answer depends on an assumption that cannot be proven (step 6). Published criticism concerns cost and precision more than logic: Lewis and Rao ran 25 large advertising experiments and report that the median confidence interval on return was more than 100 percentage points wide, because sales vary so much from person to person. So a small test will often be honest but inconclusive. The Google geo paper is a company technical report, not a journal article.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (counts, sales, dates, who was assigned where) versus INTERPRETATION (the estimated effect, its cause, what it means for the next budget). Show every subtraction. When the result and its limits are written, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The client asks "did the campaign work?" and money for the next period depends on the answer.
- Activity can be withheld from some people or some places without harm.
- A new channel or a larger budget is being considered and can be tried in part of the market first.

Do not use it when:
- Everyone must receive the activity at once (national TV, a legal notice). Use S7-03 and state the weaker evidence.
- The outcome cannot be counted separately for test and control. Fix the data first.
- The groups are so small that normal week-to-week variation is larger than any plausible effect (check with S1-09 and S4-10).
- The question is which of two ads is better before spending. That is S9-06.

## What you need before starting (inputs)
1. One outcome measure agreed in advance, from the behaviour or business level of S7-01 (orders, sign-ups, sales in units).
2. A list of units that can be assigned: customers, phone numbers, stores, districts or regions.
3. The outcome for each unit over several periods before the test (for regions, as many weeks as the client has).
4. What the activity costs in test units, and the margin per sale if a return is to be calculated.
5. A log of anything else happening during the test: price changes, stock problems, competitor actions, holidays.

## Procedure
1. Write the claim and the decision. "The campaign added at least X sales; if so we extend it, if not we stop." Kohavi and colleagues insist that the evaluation measure is fixed before the test, not chosen afterwards.
2. Choose the strongest design that is possible. (a) Random hold-out of people: best, when messages go to named individuals (SMS, Telegram, calls, email, CRM offers). (b) Regional or store test: when the activity is tied to places (outdoor, radio, store displays, sales visits). (c) If neither is possible, go to S7-03.
3. For a hold-out, let chance decide who is withheld: number the list and use a random generator, never a manager's selection. The 2009 guide by Kohavi and colleagues notes that an even split gives the most statistical power; working rule, if the client fears lost sales, hold out a smaller random share and accept a less precise answer. Size the groups with S1-09.
4. For a regional test, follow Vaver and Koehler. Use areas that do not overlap; avoid very small areas, because people cross their borders and the comparison is contaminated. Where there are many areas, rank them by earlier sales, group neighbours in the ranking, and assign at random within each group; the paper reports that taking area size into account narrowed the confidence interval by roughly 10% or more. Keep activity identical in all areas during a pre-test period, change it only in test areas, and keep counting for a while after it ends to catch delayed sales.
5. Check comparability before launch. Plot test and control for the earlier periods. A public health methods guide from Columbia University advises using several earlier time points to see whether the two move in parallel, since no statistical test can confirm this. If they do not, choose another control.
6. Calculate the effect by difference in differences: (test after - test before) - (control after - control before). This removes anything that hit both groups, such as season. It rests on the parallel trends assumption: without the campaign, the gap between the groups would have stayed the same. Working rule: when the groups differ in size, also compute the proportional version (expected test = test before x control after / control before; effect = test after - expected) and report both as a range.
7. For a random hold-out with no earlier data needed, compare rates directly. Lift = (test rate - control rate) / control rate, a simplified form of the lift measure in Gordon and colleagues. Incremental sales = (test rate - control rate) x number of people in the test group.
8. Turn the effect into money. Vaver and Koehler's measure is incremental response per unit of spend. Working rule: incremental margin / cost of the activity; below 1 the activity did not pay back within the test period, which for brand-building work (S6-05) is expected and not a verdict.
9. Check the noise and the threats. Use S4-10 for the significance of a difference in rates. With a handful of regions a formal test is not meaningful; say so and report a range. Go through the log from the inputs: spillover between areas, a competitor's action in one area only, stock-outs, price differences, control areas reached by national media, groups whose make-up changed.
10. Report the estimate with its range, the design used, and what would make it wrong. If the result is inconclusive, say so; do not rescue it with a new measure. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. A juice brand runs outdoor and radio advertising for 8 weeks in one regional city (test) and nothing extra in a second city of similar size (control). Sales in thousand litres come from the distributor. Campaign cost 90,000,000 soum; margin 3,000 soum per litre. Sales in the two cities moved together in the 6 months before (checked on a chart).

```
                     8 weeks before   8 weeks during   change
Test city                 120              150           +30          FACT
Control city              100              110           +10          FACT
Difference in differences: 30 - 10 = 20 thousand litres
Proportional version: control grew 10%; expected test = 120 x 1.10 = 132;
  effect = 150 - 132 = 18 thousand litres
ESTIMATE: 18 to 20 thousand litres added                     INTERPRETATION
Incremental margin: 54,000,000 to 60,000,000 soum
Return in the period: 0.60 to 0.67 soum of margin per soum spent
A plain before-after reading would have claimed +30 thousand litres
  (90,000,000 soum margin, return 1.0) - an overstatement by half or more.
LIMITS: two cities only, no significance test possible; delayed and
  long-term effects not counted; no competitor action logged in either city.
```
Arithmetic check: 150 - 120 = 30; 110 - 100 = 10; 30 - 10 = 20; 110 / 100 = 1.10; 120 x 1.10 = 132; 150 - 132 = 18; 18,000 x 3,000 = 54,000,000; 20,000 x 3,000 = 60,000,000; 54 / 90 = 0.60; 60 / 90 = 0.67; 30,000 x 3,000 = 90,000,000; 90 / 90 = 1.0; 30 / 20 = 1.5 and 30 / 18 = 1.67, so the plain reading overstates by 50% to 67%.

## Common mistakes
- Letting a manager pick who gets the offer, then comparing them with the rest.
- Comparing people who saw the ad with people who did not, without random assignment; those reached usually differ to begin with.
- Choosing the control after the campaign, from the areas that make the result look best.
- Reading only the "after" numbers and ignoring where each group started.
- Using areas so close together that people shop or see media in both.
- Stopping the count the day the campaign ends.
- Calling a small test "no effect" when it was only too small to see one.
- Changing the outcome measure when the first one shows nothing.

## Quality checklist
- Was the outcome measure fixed and written down before the test?
- Was assignment random, or, if not, is the design labelled as a weaker regional comparison?
- Were test and control shown to be similar and moving together before the test?
- Is the difference-in-differences subtraction shown line by line?
- Is the result given as a range, with the noise check or the reason none was possible?
- Were spillover, competitor actions, stock and price checked from a log?
- Are short-term return and long-term effect kept apart in the conclusion?
- Are FACT and INTERPRETATION marked?

## Output template
```
CONTROLLED TEST - [client / activity] - [dates]
Claim and decision: ... | Outcome measure (fixed on [date]): ...
Design: random hold-out of people / randomised regions / hand-picked regional comparison
Units: test ... | control ... | how assigned: ...
Pre-test check: periods compared ... | moved together: yes / no | chart attached
                 before    after    change
Test             ...       ...      ...
Control          ...       ...      ...
Difference in differences: ... | proportional version: ... | lift: ..%
Cost: ... | incremental margin: ... | return in the period: ...
Noise check (S4-10) or reason none possible: ...
Threats checked: spillover / competitors / stock / price / media overlap / composition
ESTIMATE (INTERPRETATION): ... to ... | LIMITS: ... | DECISION: ...
```

## Works with
- S1-09 experiments and A/B tests: design and sample size; S4-10 crosstabs and significance tests: the noise check; S2-03 survey sample size, when the outcome is a survey measure. Not repeated here.
- S7-01 objective and KPI hierarchy: supplies the outcome measure. S7-03 before and after tracking: the fallback when no control is possible.
- S9-06 creative pre-testing and live testing: comparing versions before the spend. S9-07 communication plan: where the hold-out or test regions are booked. S9-05 budget from share of voice: what the result feeds.
- S6-05 brand building and sales activation balance: why a short test under-reads brand effects. S1-23 prefer behaviour over stated reasons: why the outcome should be a behaviour.
- S2-10 research ethics and consent: withholding offers fairly. S2-11 write expectations down before fieldwork: recording the prediction. S5-05 what would have to be true: the conditions a test checks.
- S7-04 project retrospective and S8-08 own case studies: keeping results as local benchmarks.

## Notes for Uzbekistan
- Practical caution: regions and cities may differ in income, language, channels and distribution; do not assume any two are comparable. Check earlier sales side by side, and prefer several pairs to one.
- Hypothesis to check: people travelling between Tashkent and nearby districts for work and shopping may blur a Tashkent-versus-surroundings test. Prefer areas that are clearly separate.
- Hold-outs are easiest where the client owns a contact list (CRM, Telegram bot users, phone numbers). Such lists miss people who are not customers yet, so the result speaks about existing contacts only.
- Log holidays and seasonal peaks that fall inside the test, and regional events that hit one area only; ask the client's regional sales staff, in Uzbek or Russian, what else changed.
- If sales data come from distributors, confirm that both areas report in the same way and on the same dates before trusting the difference.
- The published experiments used very large Western samples; a local test will be smaller and noisier, so report ranges and repeat tests before fixing a rule.

## Sources
- Original: Kohavi, R., Tang, D., & Xu, Y. (2020). Trustworthy Online Controlled Experiments. Cambridge University Press. Authors' book page (opened): https://experimentguide.com Paid; not opened, except the publisher's free excerpt (opened): https://assets.cambridge.org/97811087/24265/excerpt/9781108724265_excerpt.pdf
- Opened, author's own site: Kohavi, R., Longbotham, R., Sommerfield, D., & Henne, R. (2009). Controlled experiments on the web: survey and practical guide. https://ai.stanford.edu/~ronnyk/2009controlledExperimentsOnTheWebSurvey.pdf
- Opened, open access: Vaver, J., & Koehler, J. (2011). Measuring Ad Effectiveness Using Geo Experiments. Google. https://research.google/pubs/measuring-ad-effectiveness-using-geo-experiments/ and full text https://services.google.com/fh/files/blogs/geo_experiments_final_version.pdf
- Opened: Google Research blog (2011). Measuring Ad Effectiveness Using Geo Experiments. https://research.google/blog/measuring-ad-effectiveness-using-geo-experiments/
- Opened, author's faculty page (working paper version of the Marketing Science 2019 article): Gordon, B. R., Zettelmeyer, F., Bhargava, N., & Chapsky, D. (2018). A Comparison of Approaches to Advertising Measurement. https://www.kellogg.northwestern.edu/faculty/gordon_b/files/fb_comparison.pdf
- Abstract opened; article paid; not opened: Lewis, R. A., & Rao, J. M. (2015). The Unfavorable Economics of Measuring the Returns to Advertising. Quarterly Journal of Economics, 130(4). https://doi.org/10.1093/qje/qjv023 (abstract: https://ideas.repec.org/a/oup/qjecon/v130y2015i4p1941-1973.html)
- Opened: Columbia University Mailman School of Public Health. Difference-in-Difference Estimation. https://www.publichealth.columbia.edu/research/population-health-methods/difference-difference-estimation
