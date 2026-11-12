---
name: s7-03-before-after-tracking
description: Repeats the baseline survey after a campaign and reads the change against a benchmark and the survey's noise. Use when a controlled test is not possible and the result must be reported honestly.
---

# Before and after tracking with benchmark (S7-03)

Before and after tracking means measuring the same things, in the same way, before a campaign and again after it, and then comparing the change with a benchmark: an estimate of how much the number would have moved anyway. A benchmark can be the change for competing brands in the same survey, the same months a year earlier, an area the campaign did not reach, or the score that is normal for a brand of this size. The measures are usually brand health measures, a term Jenni Romaniuk of the Ehrenberg-Bass Institute uses for anything that captures what category buyers hold in memory about brands; her book Better Brand Health (2023) is the key source for how to read them. The logic of the comparison, and its weaknesses, come from the research-design literature on the one-group before-after study. This skill covers reading a change honestly; designing the tracking survey itself belongs to S1-22.

Evidence grade: B. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Repeated tracking is standard professional practice, and Romaniuk's reading rules draw on published Ehrenberg-Bass research, but the design itself is weak evidence of cause. The listed limit is that changes may come from season or competitors. William Trochim's Research Methods Knowledge Base names six threats to any single-group before-after comparison: history (something else happened), maturation (a trend already under way), testing (being asked before changes later answers), instrumentation (the measurement changed), mortality (different people drop out) and regression to the mean (an unusually low or high first score drifts back). His remedy is a control group, which is S7-02; a benchmark is a partial substitute, not an equal one. Romaniuk adds criticism from inside brand tracking: scores depend heavily on brand size and on how many of the brand's buyers are in the sample, so raw totals mislead. Use this method to say whether a change is real and whether it is larger than the background, and say plainly that it cannot prove the campaign caused it.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (the two scores, sample sizes, dates, logged events) versus INTERPRETATION (what caused the change). Use the wording "consistent with" for cause unless a control exists. When the reading is written with its limits, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The campaign reaches everyone at once, so no group or region can be held out.
- A baseline survey exists, or can still be run before launch.
- The objective is a brand measure (awareness, associations) that sales records cannot show.

Do not use it when:
- A hold-out or regional test is possible. Use S7-02; it is stronger.
- No baseline was taken. A single "after" survey cannot show change; say so.
- The questionnaire, sample source or survey mode changed between waves. The comparison is broken; report the two waves separately.

## What you need before starting (inputs)
1. The baseline wave: questionnaire, sample source, quotas, dates, sample size and results (from S1-22).
2. The objectives it must be read against (S7-01, S9-01) and the campaign dates, regions and spend.
3. At least one benchmark chosen before the second wave is fielded.
4. A log of other events in the period: price and distribution changes, competitor campaigns, season, holidays, news about the category.
5. Behaviour data for the same period if any exist: sales, enquiries, visits.

## Procedure
1. Record why a controlled test was not possible, and what weaker claim the team will therefore make. Write the expected change before fielding the second wave (S2-11).
2. Freeze the instrument. Same questions, same order, same brand list, same sample source, quotas and mode, same position in the week and month. This answers Trochim's instrumentation threat. Romaniuk's podcast interview notes that many tracker problems came from well-meant changes; working rule, any change is made after the comparison, not between the waves.
3. Interview fresh people in each wave, drawn the same way. Working rule based on the testing threat: people already asked about the brand are more alert to it afterwards, so re-interviewing the same respondents inflates the second score.
4. Fix the benchmarks before seeing results. Romaniuk's rule is to design the tracker for the whole category, one that any brand in it could use, so competitors' scores come from the same survey at no extra cost. Options, strongest first as a working rule: an area or group the campaign did not reach; competitors of similar size in the same waves; the same period a year earlier; the level expected for a brand of this size (S4-18).
5. Calculate the change and its margin of error (S2-03 for the formula, S4-10 for the test). Working rule: a change smaller than the margin of error is reported as "no detectable change", whatever its direction.
6. Subtract the benchmark: brand change minus benchmark change, in percentage points. The benchmark has its own margin of error, so the net figure is less certain than either change alone; say this in the report.
7. Split the result by buyers and non-buyers of the brand. Romaniuk reports that whether someone has bought the brand is the largest difference in how people answer, while differences by age or gender are usually small, and Ehrenberg-Bass research shows brand users recall the brand's advertising more than non-users. Check the share of buyers in each wave: if it differs, the total can move with no change in anyone's memory. For a campaign aimed at new buyers, the non-buyer line is the one that counts.
8. Read the score for the brand's size. She points out that small brands have fewer buyers who are also slightly less loyal, so their normal level on awareness and similar measures is lower; in her account, small brands should watch reach among non-buyers and large brands their share of associations among buyers (S4-19).
9. Go through the six threats with the event log. For each, write "ruled out because...", "possible" or "likely". Season and competitor activity fall under history; a first wave taken at an unusual low or high point is regression to the mean.
10. Check against behaviour (S2-07): did sales or enquiries move in the same direction over the same weeks? A brand measure that rose alone is weaker evidence than one that rose with behaviour (S7-01).
11. Write the conclusion at one of three levels, working rule: "no detectable change"; "changed, but not more than the benchmark"; "changed more than the benchmark, consistent with a campaign effect, other causes not excluded". Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. A housing developer in Tashkent ran a three-month city-wide campaign. Survey of people planning to buy a flat within two years, fresh sample of 400 in each wave, same recruiter and questionnaire. Measure: prompted awareness of the developer. Benchmark fixed in advance: a competitor of similar size in the same survey.

```
                              before        after        change
Developer, all respondents   32% (128)    41% (164)     +9 points      FACT
  margin of error of the change: about +/-6.6 points -> change is real
Competitor (benchmark)       30% (120)    33% (132)     +3 points      FACT
Net of benchmark: 9 - 3 = +6 points; combined margin about +/-9 points
  -> not clearly more than the background rise
Split: already contacted the developer  40 of 400 -> 44 of 400 (all aware)
       not yet contacted                88/360 = 24.4% -> 120/356 = 33.7%
  -> the rise is among people not yet in contact; sample make-up stable
Event log: property fair in month 2 (lifts all developers); competitor
  launched a new project in month 3; no price change.
Behaviour: enquiries per month 310 -> 420 (+35.5%)
CONCLUSION (INTERPRETATION): awareness rose, mainly among new people, and
  enquiries rose with it. Consistent with a campaign effect; the fair may
  explain part; the excess over the benchmark is within noise.
```
Arithmetic check: 128 / 400 = 0.32; 164 / 400 = 0.41; 41 - 32 = 9; standard error of the change = square root of (0.32 x 0.68 / 400 + 0.41 x 0.59 / 400) = square root of 0.001149 = 0.0339; 1.96 x 0.0339 = 0.066; competitor 120 / 400 = 0.30, 132 / 400 = 0.33, its margin 1.96 x square root of (0.30 x 0.70 / 400 + 0.33 x 0.67 / 400) = 0.064; combined = square root of (0.066 squared + 0.064 squared) = 0.092, a rough figure because both brands were rated by the same respondents; 128 - 40 = 88; 400 - 40 = 360; 88 / 360 = 0.244; 164 - 44 = 120; 400 - 44 = 356; 120 / 356 = 0.337; 420 - 310 = 110; 110 / 310 = 0.355.

## Common mistakes
- Reporting the raw rise as the campaign's effect with no benchmark, or picking the benchmark after seeing which one flatters the result.
- Changing the questionnaire, brand list, recruiter or survey channel between waves.
- Treating a two-point move in a sample of 300 as a result.
- Reading totals only, when the share of the brand's own buyers differs between waves.
- Taking the baseline right after a crisis or a peak, then counting the return to normal as success.
- Comparing a small brand's awareness with the market leader's and calling it failure.
- Writing "the campaign increased awareness by X" when the design supports only "awareness rose by X".

## Quality checklist
- Is it stated why no controlled test was run?
- Were questionnaire, sample source, quotas, mode and timing identical in both waves, with fresh respondents?
- Was the benchmark chosen and written down before the second wave?
- Is the change shown with its margin of error, and the net-of-benchmark figure with a caution on its precision?
- Are buyers and non-buyers shown separately, with their shares in each wave?
- Has each of the six threats been marked ruled out, possible or likely, using an event log?
- Was the brand measure checked against behaviour data?
- Does the conclusion use one of the three levels and avoid causal wording without a control?

## Output template
```
BEFORE-AFTER READING - [client / campaign] - waves: [dates] and [dates]
Why no controlled test: ... | Expected change written on [date]: ...
Instrument identical: questions / sample source / quotas / mode / timing -> yes / no (if no: stop)
Benchmark (fixed on [date]): control area / competitors / same period last year / size norm
MEASURE      BEFORE (n)   AFTER (n)   CHANGE   MARGIN OF ERROR   REAL? (S4-10)
Brand        ...
Benchmark    ...
Net of benchmark: ... points | precision note: ...
Buyers: share before ..% after ..% | score before ... after ...
Non-buyers: score before ... after ...
Threats: history ... | maturation ... | testing ... | instrumentation ... | mortality ... | regression ...
Behaviour over the same period (FACT): ...
CONCLUSION LEVEL: no detectable change / changed, not above benchmark / above benchmark, consistent with effect
INTERPRETATION and limits: ...
```

## Works with
- S1-22 brand health tracking: designs the survey this skill reads; S1-21 Category Entry Point research and S4-19 mental availability metrics: the measures tracked. Not repeated here.
- S2-03 survey sample size and margin of error, S4-10 crosstabs and significance tests: whether a change exceeds noise. S2-13 total survey error: other ways the two waves can differ.
- S7-02 controlled tests: the stronger design to prefer. S7-01 objective and KPI hierarchy: which measures were promised and at what level.
- S4-18 Double Jeopardy and duplication benchmarks: what is normal for a brand of this size. S4-22 share of voice vs share of market: logging competitor activity as background.
- S2-07 triangulation and S1-23 prefer behaviour over stated reasons: checking survey change against sales. S2-11 write expectations down before fieldwork: fixing predictions and benchmarks.
- S3-07 response styles across cultures and S3-09 satisficing and data-quality checks: keeping wave-to-wave answer quality equal. S9-07 communication plan: where both waves are booked. S7-04 project retrospective: recording the reading.

## Notes for Uzbekistan
- Keep the language mix the same in both waves: the same share of Uzbek and Russian interviews, with identical wording in each (S3-03). A shift in language mix can move a score by itself.
- Telegram-bot samples miss older and rural people and depend on which channels recruited them. Recruit both waves through the same channels and report the result as "among this sample", not as the population.
- Practical caution: holidays and seasonal peaks can move both attention and sales. Place the two waves so that neither falls in an unusual week, or use the same period a year earlier as a second benchmark.
- Polite or agreeing answers may raise awareness and liking scores in every wave. This matters less for change than for level, provided the method is identical; do not compare levels with foreign norms.
- Read Tashkent and the regions separately when the campaign weight differed; a region with little campaign activity can serve as a rough benchmark. The reading rules were developed mostly on Western and Australian data; treat brand-size norms as hypotheses until your own tracking confirms them (S8-08).

## Sources
- Original: Romaniuk, J. (2023). Better Brand Health: Measures and Metrics for a How Brands Grow World. Oxford University Press. Paid; not opened. Its content is reported here through the author's interviews below.
- Opened, interview: Jenni Romaniuk on better brand health. Contagious (full text) https://contagious.com/news-and-views/jenni-romaniuk-on-better-brand-health and the Ehrenberg-Bass Institute's own page (2023, excerpt) https://marketingscience.info/news-and-insights/jenni-romaniuk-on-better-brand-health
- Opened, podcast transcript: Bigeye. Better Brand Health with Jenni Romaniuk (Part 2). https://www.bigeyeagency.com/insights/better-brand-health-with-jenni-romaniuk-part-2
- Opened: Morgan, B. (2016). Brand loyalists may significantly skew research. Research Live (reports an Ehrenberg-Bass study in the Journal of Advertising Research; the study itself is paid; not opened). https://www.research-live.com/article/news/brand-loyalists-may-significantly-skew-research/id/5013542
- Opened: Trochim, W. M. K. Single-Group Threats. Research Methods Knowledge Base. https://conjointly.com/kb/single-group-threats/
