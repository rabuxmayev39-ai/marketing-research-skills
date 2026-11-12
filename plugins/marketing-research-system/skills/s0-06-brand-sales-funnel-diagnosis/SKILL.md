---
name: s0-06-brand-sales-funnel-diagnosis
description: Compares awareness, consideration, purchase and repeat for a brand against rivals of similar size to find the weakest step. Use when brand survey or CRM data exist and the problem is still vague.
---

# Brand and sales funnel diagnosis (S0-06)

A funnel diagnosis lines up a few counted steps between "has heard of the brand" and "buys it again" (usually awareness, consideration, purchase, repeat purchase), works out what share of people pass from each step to the next, and compares those shares with competitors to see where the brand loses more people than it should. The funnel is a long-standing sales and advertising convention; no single author was verified for this skill. The modern rules for reading brand measures come from brand health research, summarised by Jenni Romaniuk of the Ehrenberg-Bass Institute in Better Brand Health (2023): build the survey for the whole category, analyse buyers and non-buyers separately, and judge every brand's numbers against its size.

Evidence grade: B. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Funnel reporting is standard in brand tracking, and the size effects used to read it (small brands have fewer buyers who are also slightly less loyal, known as Double Jeopardy) are described by Ehrenberg-Bass Institute researchers as a regular pattern. But the funnel is not a tested model of how people buy. McKinsey's 2009 study of nearly 20,000 consumers in five industries concluded that buying is more circular than linear: people add brands while they evaluate, and many change their mind at the point of sale. The same article still accepts the funnel as a way to see where sales stall compared with rivals. So use it as a diagnostic that points to a step worth investigating, never as a description of behaviour or a forecast. The Romaniuk book itself was not opened for this skill; her views are taken from interviews listed under Sources.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (counts and percentages from the data) versus INTERPRETATION (why a step is weak). Never present a conversion ratio as a cause. When the diagnosis is written, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A brand survey of category buyers, or CRM and sales-pipeline records, already exist.
- The client says "sales are weak" and nobody knows whether the problem is being known, being chosen or being bought again.
- At least two competitors can be measured in the same way.

Do not use it when:
- There are no data. Do not fill a funnel with guesses; plan a survey (S1-08, S1-22) or use S0-05 on sales records.
- The team wants to explain why people buy. The funnel shows where, not why; use S1-04 or S1-07.
- Only the client's own brand was measured. Without competitors there is no benchmark.

## What you need before starting (inputs)
1. The decision the client faces and the category definition (S0-02).
2. Survey data: the same questions asked about every brand, answered by category buyers, with the sample size. Or CRM data: leads, qualified leads, first purchases, repeat purchases for one fixed period.
3. A rough size for each brand (market share or share of buyers), so brands can be compared with peers.
4. How the sample was recruited (S2-02), to know whom it leaves out.

## Procedure
1. Fix the steps and write an exact definition for each. Working rule for a survey: prompted awareness (recognises the brand from a list), consideration (would consider buying), purchase in a stated period, repeat (bought two or more times in that period). For CRM: lead, qualified lead, first purchase, second purchase. Three to five steps, ordered broad to narrow, as brand-tracking software vendors such as Qualtrics recommend.
2. Check the base. Every step must be a share of the same base, all category buyers in the sample, including steps that only some respondents were asked. This is the convention described by Qualtrics; mixed bases make ratios meaningless.
3. Compute, for every brand, the level at each step (share of the base) and the conversion ratio (one level divided by the level before it). Show the counts as well as the percentages.
4. Prefer prompted awareness. Romaniuk argues that unprompted and top-of-mind recall are biased against small brands and non-users, while prompted awareness checks the basic point: do category buyers who do not buy the brand know it exists in the category?
5. Compare like with like. Romaniuk's rule is to read results with brand size in mind: small brands can wrongly conclude they are failing, big ones can become complacent. Working rule: benchmark each ratio against one or two brands of similar size first, then look at the leader only as context. A gap to the leader at every step is the normal size pattern (S4-18), not a finding.
6. Name the weakest step: the ratio where the brand falls furthest below its similar-size peers. Working rule: call a gap real only if it is larger than the survey margin of error for that sample (S2-03); otherwise write "no clear difference".
7. Split by buyer status. Following Romaniuk's advice to analyse by whether people have bought the brand, look at awareness and consideration among non-buyers separately; that is where growth has to come from.
8. Translate the weak step into two or three hypotheses about causes, each with the evidence that would test it. Working rule of thumb: weak awareness points to reach and media (S9-03); weak consideration to what people know about the brand (S1-21, S4-19); weak purchase to price, distribution and availability (S6-03, S1-13); weak repeat to product experience (S1-16). Mark all of these INTERPRETATION.
9. State the limits in the output: buying is not linear, the sample leaves some people out, and ratios describe one moment. Hand the hypotheses to S0-13 and return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a juice brand ("ours") in Tashkent; a Telegram-bot survey of 600 category buyers; rival B is the market leader, rival C is about our size.

```
Share of all 600 buyers (FACT, invented)   Ours        Rival C     Rival B (leader)
Prompted awareness                          60% (360)   62% (372)   90% (540)
Would consider                              30% (180)   40% (240)   63% (378)
Bought in last 3 months                     12% (72)    16% (96)    36% (216)
Bought 2+ times                              6% (36)     8% (48)    22% (132)
Conversion ratios
Awareness -> consideration                  50%         65%         70%
Consideration -> purchase                   40%         40%         57%
Purchase -> repeat                          50%         50%         61%
WEAKEST STEP vs similar-size rival C: awareness -> consideration (50% vs 65%).
  Consideration level 30% vs 40%: gap 10 points; margin of error about +/-4 points.
Later steps equal C. Gap to B at every step = normal size pattern, not a finding.
INTERPRETATION (hypotheses): people know the name but do not link it to any buying
  situation; or they saw it only in one channel. Test: S1-21, then S4-19.
Illustration, not a forecast: at C's 65% ratio, 360 aware would give about 232
  considering and about 93 buyers instead of 72 (15.5% of the sample instead of 12%).
```
Arithmetic check: 600 x 0.60 = 360; 600 x 0.30 = 180; 600 x 0.12 = 72; 600 x 0.06 = 36; 180/360 = 0.50; 72/180 = 0.40; 36/72 = 0.50. Rival C: 372, 240, 96, 48; 240/372 = 0.645; 96/240 = 0.40; 48/96 = 0.50. Rival B: 540, 378, 216, 132; 378/540 = 0.70; 216/378 = 0.571; 132/216 = 0.611. Margin of error for 30% at n = 600: 1.96 x sqrt(0.30 x 0.70 / 600) = 1.96 x 0.0187 = 0.037; for 40%: 1.96 x sqrt(0.24/600) = 1.96 x 0.02 = 0.039. Illustration: 360 x 0.645 = 232.2; 232.2 x 0.40 = 92.9; 92.9/600 = 15.5%.

## Common mistakes
- Comparing a small brand with the market leader and calling every gap a problem.
- Reading the funnel as the route each buyer travels, then planning one message per stage.
- Using different bases for different steps, or a sample of the brand's own customers.
- Ranking brands on top-of-mind recall only.
- Reporting a two-point gap from a small sample as a finding.
- Stopping at "consideration is weak" with no hypotheses and no next research step.
- Filling missing steps with the client's guesses and drawing the chart anyway.

## Quality checklist
- Is each step defined in one sentence, with the period stated?
- Are all levels shares of the same base of category buyers?
- Are counts shown beside percentages, and the sample size stated?
- Was the brand compared with rivals of similar size before the leader?
- Is the weakest step larger than the margin of error?
- Were non-buyers of the brand looked at separately?
- Are causes written as hypotheses with a test for each?
- Are the limits of the funnel and of the sample stated?

## Output template
```
FUNNEL DIAGNOSIS - [brand] - [category, place] - [date]
Data: [survey / CRM] | base: [who, n = ...] | period: ... | who is missing: ...
Steps and definitions: 1 ... 2 ... 3 ... 4 ...
                          Ours      Peer 1     Peer 2     Leader
Level at each step (% and count) ...
Conversion ratios ...
Brand sizes used for peer choice: ...
WEAKEST STEP (FACT): ... | gap ... points | margin of error ...
Non-buyers only: awareness ... consideration ...
HYPOTHESES (INTERPRETATION): 1 ... test: ... | 2 ... test: ...
Limits: not a model of behaviour; sample limits; one point in time.
```

## Works with
- S0-02 decision problem to research problem and S0-05 growth decomposition: used before or beside this method. S0-13 facts, assumptions, unknowns register: receives the hypotheses.
- S1-08 usage and attitude surveys and S1-22 brand health tracking: sources of the data. S2-02 sampling, S2-03 sample size and margin of error, S4-10 crosstabs and significance tests: reading it correctly.
- S4-18 Double Jeopardy benchmarks: what is normal for a brand's size. S4-19 mental availability metrics and S1-21 Category Entry Point research: follow-up when consideration is weak.
- S1-07 JTBD switch interviews, S1-13 mystery shopping, S1-16 critical incident technique, S1-20 customer journey research: explaining the weak step.
- S6-03 growth through penetration and S7-03 before and after tracking: using and re-measuring the result.

## Notes for Uzbekistan
- Telegram-bot samples are likely to miss older and rural people. State this next to every funnel, and do not project the levels to the whole population.
- Show brand lists with names and logos as they appear on the shelf, in both Uzbek and Russian spellings, so recognition does not depend on the script.
- Polite or agreeing answers may inflate "would consider". Practical caution: give more weight to purchase in a stated period than to consideration, and treat high consideration with low purchase as a possible answer habit before calling it a distribution problem (S3-07).
- Tashkent and the regions may differ in which brands are on sale. Run the funnel separately where the sample allows, and treat any transfer as a hypothesis.
- The size patterns were documented mostly in Western and other large markets; expect them here but check with local data.

## Sources
- Original: Romaniuk, J. (2023). Better Brand Health: Measures and Metrics for a How Brands Grow World. Oxford University Press. Paid; not opened. Publisher's page (opened, contents list only): https://www.oup.com.au/books/higher-education/business-marketing/9780190340902
- Opened: Contagious. Jenni Romaniuk on better brand health (interview with the author). https://contagious.com/news-and-views/jenni-romaniuk-on-better-brand-health
- Opened: Bigeye. Better Brand Health with Jenni Romaniuk (podcast transcript). https://www.bigeyeagency.com/podcast/better-brand-health-with-jenni-romaniuk
- Opened, publisher's own copy: Court, D., Elzinga, D., Mulder, S., & Vetvik, O. J. (2009). The consumer decision journey. McKinsey Quarterly. https://www.mckinsey.com/~/media/McKinsey/Business%20Functions/Marketing%20and%20Sales/Our%20Insights/The%20consumer%20decision%20journey/The%20consumer%20decision%20journey.pdf
- Opened, software vendor's help page (for the calculation convention only): Qualtrics. Conversion funnel reporting. https://qualtrics.com/support/brand-experience/common-use-cases-bx/conversion-funnel-reporting-bx
