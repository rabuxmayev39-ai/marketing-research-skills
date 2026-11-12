---
name: s1-08-usage-attitude-surveys
description: Decides whether a usage and attitude survey fits, picks the mode, structures the study and plans fieldwork. Use when behaviours, segments or brand metrics must be sized.
---

# Surveys, usage and attitude (S1-08)
A survey puts the same structured questions to a sample of a defined population so that behaviours, groups and brand measures can be counted and, with a suitable sample, projected. A usage and attitude (U&A) study is the standard market research form: who buys the category, how often, which brands, where, and what they think. Survey practice has no single inventor; the reference text is Groves, Fowler, Couper, Lepkowski, Singer and Tourangeau (2009), Survey Methodology, which organises the field around the sources of error in a survey estimate. Evidence grade: A. Sampling, mode effects and measurement error have been studied in peer-reviewed research for decades. The grade applies to the method done properly; a badly sampled or badly worded survey earns none of it. Two limits remain however well it is run: a survey measures only what the team thought to ask, and answers about attitudes and intentions are weaker evidence of behaviour than records of behaviour.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (counts from the data, with base size) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The decision needs a number: how many, what share, how often, which group is larger.
- The team already knows which questions and answer options matter, from desk research or qualitative work.
- A defined population can be reached with a sample you can describe honestly.
Do not use it when:
- Existing data already answer the question (S1-03). AAPOR's guidance puts this check first.
- The team does not yet know what to ask or in which words. Do S1-04, S1-05 or S1-07 first.
- The question is "does X cause Y?" Use S1-09.
- The answer needed is a price or a feature trade-off. Use S1-10, S1-11 or S1-12.
- Real behaviour is recorded somewhere (sales, CRM, loyalty data). Prefer it (S1-23).

## What you need before starting (inputs)
- A research brief with the decision, the population, and the numbers the decision needs (S2-01).
- Findings from earlier qualitative work: the category words people use, brand lists, occasions, reasons.
- Budget, deadline, what contact information exists (phone lists, addresses, Telegram channel, customer base).
- Agreed subgroups to be reported separately, because they drive sample size (S2-03).

## Procedure
1. Check fit. Ask the user: what will be decided, which numbers would change the decision, and how precise must they be? Write a table: decision, number needed, question that produces it. If a number has no decision attached, drop it. If no number is needed, recommend a qualitative method instead.
2. Check existing data (S1-03) and write down what the team expects to find before fieldwork (S2-11).
3. Define the population in one sentence (who, where, which period), for example "adults 18 to 60 in Tashkent city who bought packaged juice in the last month". Decide who screens out.
4. Choose the mode. AAPOR's guidance bases the choice on available contact information, budget and timeline, and describes the trade-offs:
   - Online (web link, Telegram bot): fast and cheap; may miss older, lower-income or rural people. Telephone and face-to-face: cost more; an interviewer helps with long or complex questionnaires. Mixed: start with the cheaper mode and follow up with the costlier one.
   Mode also changes answers. A Pew Research Center experiment with 3,003 people randomly assigned to phone or web found a mean difference of 5.5 points across 60 questions, largest on satisfaction and sensitive items (up to 18 points) and not significant on recent factual behaviour. Decision rule (working rule of this skill): if satisfaction, image or sensitive questions matter, use one mode for all groups and all waves that will be compared.
5. Lay out the questionnaire in U&A blocks. This order is common practice and a working structure, not a tested standard:
   a. Screener and quota questions. b. Category usage: bought or used in a stated recent period, frequency, amount, occasions, who decides.
   c. Brands: unaided awareness, then aided awareness, ever tried, bought in the period, bought most often. d. Purchase: where bought, pack or model, price paid.
   e. Attitudes and needs: agreement statements drawn from qualitative work; brand image. f. Media and information sources. g. Demographics and contact for quality control.
   Ask behaviour before attitudes and unaided before aided. Tie behaviour questions to a recent, named period. Hand wording to S3-01.
6. Plan length. Working rule: 10 to 12 minutes for a Telegram bot or web survey, up to about 25 minutes face to face. Cut the question table from step 1 until it fits.
7. Hand sampling to S2-02 and sample size to S2-03. This skill only records the result: frame, selection method, quotas, n in total and per subgroup. State plainly whether the sample is probability or non-probability; AAPOR asks for particular openness about methods for the latter.
8. Pretest and pilot. Run cognitive interviews with people like the target sample (S3-02) in each language (S3-03). Then pilot the whole process: recruitment, the script or bot, data export and cleaning. Working rule: release 5 to 10 percent of the sample first, check the data file, then release the rest.
9. Plan fieldwork: dates, interviewers or channels, daily targets, quota tracking, incentives, contact attempts at different times, a field log. AAPOR lists incentives and repeated contacts by varied means as ways to raise participation.
10. Monitor during fieldwork. Daily: completes against quotas, drop-out by question, interview length, unusual answer patterns by interviewer or source. Act on odd patterns at once; they often signal a script or training fault. Apply S3-09 checks; for interviewer modes, re-contact a share of respondents.
11. After fieldwork: clean, decide on weighting to known population figures (age, sex, area), and report with full disclosure: n, dates, mode, population, how the sample was built, weighting, and exact question wording.
12. Read results with the limits in view. Treat usage figures as estimates with a margin of error (S2-03); treat attitude and intention answers as INTERPRETATION-grade evidence of future behaviour and check them against behaviour data where possible (S4-08). Return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand wants to know how many Tashkent juice buyers know and buy it, to choose between an awareness campaign and a trial promotion. Population: adults 18 to 60 in Tashkent city who bought packaged juice in the last month. Mode: face-to-face tablet interviews at home, because a Telegram sample would miss older buyers. n = 600 (from S2-03), quotas by district, age and sex. Field plan: 8 interviewers at 10 interviews a day gives 80 a day; 600 / 80 = 7.5, so 8 field days plus 2 pilot days.
Output (base: 600 category buyers):

| Measure | Count | Share of base |
|---|---|---|
| Aware of the brand (aided) | 360 | 60% |
| Ever tried | 180 | 30% |
| Bought in the last month | 90 | 15% |

FACT: 180 of the 360 who are aware have tried (50%); 90 of the 180 who tried bought last month (50%); 240 of 600 (40%) do not know the brand. INTERPRETATION: both steps lose half; the largest single group is the unaware 40%, which points to awareness first, to be checked against competitors' figures from the same survey. Limit: aided awareness in a face-to-face interview can be inflated by polite answers.

## Common mistakes
- Fielding a survey before qualitative work, so the answer lists miss what people would have said.
- Choosing the mode by cost alone and then describing the result as "the market".
- Adding questions that serve no decision until the survey is too long to finish.
- Mixing modes between groups or waves and reading the mode difference as a real change.
- Skipping the pilot; not monitoring quotas and interviewer patterns during fieldwork.
- Reporting stated intentions as forecasts, or percentages without base sizes.

## Quality checklist
- Is every question tied to a decision in the question table? (yes/no)
- Was existing data checked first? (yes/no)
- Is the population defined in one sentence and the sample type stated honestly? (yes/no)
- Is the mode justified by coverage of the population, not only cost? (yes/no)
- Were the questionnaire and the full process pretested in each language? (yes/no)
- Is there a daily fieldwork monitoring plan with named checks? (yes/no)
- Does the report disclose n, dates, mode, sampling, weighting and question wording? (yes/no)
- Are attitude and intention results labelled as weaker evidence than behaviour? (yes/no)

## Output template
```
USAGE AND ATTITUDE SURVEY PLAN (S1-08)
Decision this serves:                    Decision owner:
Why a survey (and what existing data lack):
Population (one sentence):               Screen-out rules:
Mode and reason:                         Who the mode misses:
Sample (from S2-02 / S2-03): frame, method, quotas, n total, n per subgroup, probability or not

| Decision | Number needed | Question block | Subgroups |

Questionnaire blocks and minutes: screener / usage / brands / purchase / attitudes / media / demographics
Languages and pretest plan:              Pilot (n, dates):
Fieldwork: dates, team or channels, daily target, incentive, contact attempts
Monitoring checks and who does them:
Weighting plan:                          Disclosure items for the report:
Expectations written before fieldwork (S2-11):
Limits:                                  Next step:
```

## Works with
- S1-03 desk research and S1-04, S1-05, S1-07 qualitative methods: come before the survey. S1-02 mixed methods designs.
- S2-01 brief; S2-02 sampling; S2-03 sample size; S2-12 measure development; S2-13 total survey error (the checklist of error sources).
- S3-01 questionnaire design; S3-02 cognitive pretest; S3-03 translation; S3-07 response styles; S3-09 data-quality checks.
- S4-10 crosstabs; S4-11 and S4-12 segmentation; S4-14 key drivers; S4-18 and S4-19 brand benchmarks; S4-23 market sizing.
- S1-21 Category Entry Point research and S1-22 brand health tracking: specialised surveys built on this plan. S4-08 say-do analysis.

## Notes for Uzbekistan
- Field in Uzbek and Russian; let the respondent choose; translate and pretest each version separately (S3-03).
- Telegram-bot and web samples miss older and rural people. Say so in the report, or add face-to-face or phone for those groups, keeping the comparison caveat from step 4.
- Polite or agreeing answer habits can raise agreement and satisfaction scores, more so with an interviewer present. Use behaviour questions where possible and see S3-07.
- Set quotas for Tashkent and for regions separately and report them separately before pooling.
- Check which official population figures are available for quotas and weighting (S8-07) before promising a "representative" sample.
- Most mode and measurement research was done in the US and Europe. Treat effect sizes as hypotheses here.

## Sources
- Original: Groves, R. M., Fowler, F. J., Couper, M. P., Lepkowski, J. M., Singer, E., & Tourangeau, R. (2009). Survey Methodology (2nd ed.). Wiley. Paid book. Not opened.
- Opened: American Association for Public Opinion Research (2022). Best practices for survey research. https://aapor.org/wp-content/uploads/2022/11/AAPOR-Standards-best-practices_March-2022.pdf
- Opened: Pew Research Center (2015). From telephone to the web, the challenge of mode of interview effects in public opinion polls. https://www.pewresearch.org/methods/2015/05/13/from-telephone-to-the-web-the-challenge-of-mode-of-interview-effects-in-public-opinion-polls/
- Opened: Tourangeau, R. (2013). Confronting the challenges of household surveys by mixing modes. Keynote slides, FCSM Research Conference. https://apps.bea.gov/icsp/fcsm/assets/docs/Plenary_Tourangeau_2013FCSM.pdf
- Opened (abstract only): Groves, R. M., & Lyberg, L. (2010). Total survey error, past, present, and future. Public Opinion Quarterly, 74(5), 849-879. https://core.ac.uk/display/79892939
- Opened (abstract only): Armstrong, J. S., Morwitz, V. G., & Kumar, V. (2000). Sales forecasts for existing consumer products and services, do purchase intentions contribute to accuracy? International Journal of Forecasting, 16(3), 383-397. It reports that intentions improved forecasts for existing products, so the caution about attitudes above is a working rule of this skill, not a finding of that paper. https://repository.upenn.edu/entities/publication/9859e4e5-e4e2-4f3f-8895-33c857b6506c/full
