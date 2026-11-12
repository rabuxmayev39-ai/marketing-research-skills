---
name: s8-06-listening-to-citizens-uzbekistan
description: Finds, reads and cites the World Bank Listening to the Citizens of Uzbekistan household panel and its microdata. Use for living standards and regional differences in desk research.
---

# Listening to the Citizens of Uzbekistan survey (S8-06)

Listening to the Citizens of Uzbekistan (L2CU) is a household survey run by the World Bank, with fieldwork by a local research company, Nazar Business and Technology Consulting (NBT). The catalogue entry names a World Bank governance programme for Central Asia as funder and mentions support from the UK Government. It is a panel: the same households are interviewed again and again, which shows change over time. The design, as the catalogue describes it: a face-to-face baseline survey in 2018 of about 4,000 households in 200 mahallas (neighbourhood communities), chosen in two stages. First, mahallas were drawn with a chance proportional to their population inside 27 strata (groups defined by region and by urban or rural area, with Tashkent city as its own group). Second, 20 households were drawn at random in each. From this baseline a random panel of about 1,500 households is called every month by phone (computer-assisted telephone interviewing, CATI). The respondent is the household member who knows most about the household. Households that refuse or drop out are replaced by others from the same mahalla, and weights are adjusted each round.

The published dataset is titled Listening to the Citizens of Uzbekistan Survey 2018-2025, reference UZB_2018-2025_L2CU_v03_M. Example of what the source contained on the date checked (12 November 2026), re-check before use: it covered rounds 1 to 82, collected from 5 September 2018 to 26 June 2025. Modules listed are household roster, migration, employment, shocks, wellbeing, views, incomes and savings, plus a food insecurity scale from round 49. The questionnaire is in Uzbek and Russian and takes about 20 minutes. Not stated on the pages opened: response rates, attrition figures by round, and whether rounds after June 2025 exist or will be released. A World Bank country page dated 11 March 2025 described the monthly calls as continuing.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The grade reflects a documented probability sample, a public data dictionary and open microdata that anyone can re-analyse, which is the standard of research-grade data. Honest limits: no peer-reviewed validation study of L2CU itself was opened for this skill, so the A rests on the documented design; phone follow-up reaches only households that gave a number; and it is not a consumer-brand survey, so it has no brands, categories or media habits.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (a result computed from the data or read in a World Bank report, with round and date) versus INTERPRETATION. Open the live source every time; never reuse the example figures in this skill. Do not state any figure about Uzbekistan from memory. When done, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A project needs evidence on living standards: income sources, employment, migration, shocks, savings, wellbeing.
- The team wants to compare regions, or urban and rural households, on such measures.
- A change over time matters, for example before and after an economic shock.

Do not use it when:
- The question is about brands, product categories, shopping or media use. The modules do not cover them.
- A figure is needed for one district or one small region from one round. The groups are too small.
- Nobody on the team can analyse survey data with weights. Use the World Bank's published summary reports instead and cite those.

## What you need before starting (inputs)
1. The research question and the measure wanted, checked against the data dictionary.
2. A free account on the World Bank Microdata Library, and a person who can use Stata, R, SPSS or a spreadsheet with weights.
3. The breakdown wanted (region, urban or rural, period) and the decision it feeds.
4. The facts, assumptions, unknowns register (S0-13).

## Procedure
1. Open the catalogue entry at https://microdata.worldbank.org/catalog/6412 (or the copy at https://catalog.ihsn.org/catalog/12626). Record the title, reference ID, version, rounds covered and the modification dates shown. If a page cannot be opened, say so and stop. Working rule: if the two copies show different dates, cite the one you downloaded from.
2. Decide whether you need microdata at all. The World Bank country page links summary reports in English, Uzbek and Russian. If one answers the question, cite the report with its date.
3. Check that the variable exists. Read the study description and data dictionary; find the exact question, its answer options, the rounds in which it was asked and the unit (household or person). Modules were added over time, so not every question is in every round.
4. Get the data. The catalogue says the user must be logged in (registration is free) and must accept the access conditions: no unauthorised copying, no attempt to identify any person, establishment or sampling unit, and any accidental identification kept confidential and reported to the depositor. Tell the user these conditions bind the agency. Never upload the files to public tools or share them with a client.
5. Respect the panel design when analysing:
   - Use the weights supplied for each round. The catalogue says they make the phone sample comparable to the baseline and representative at the level of the strata. The country page says the baseline over-sampled households receiving social protection, another reason unweighted counts mislead.
   - The same households appear in many rounds. Interviews pooled across months are not independent. Working rule: when pooling rounds for a region, use the number of households, not the number of interviews, to judge precision.
   - Replacement households come from the same mahalla, so the panel is not identical from round to round. For change over time, either compare weighted cross-sections or follow only households present in both rounds, and say which.
   - With about 1,500 households across 27 strata, any one region in one round is a small group. Working rule: report a range (S2-03) and note that clustering in mahallas makes the true range wider than the simple formula gives.
6. Name who is missing. Phone mode leaves out baseline households without a usable number and those that dropped out without an equal replacement. Working rule: because the frame dates from 2018, households formed since then may be under-covered; say so as a caution, not as a fact.
7. Remember the respondent is one informed member speaking for the household. Answers about other members' work or views are second-hand; opinions belong to that respondent.
8. Translate into a planning number in visible steps: weighted share, its range, multiplied by a household count taken from national statistics (S8-07) with its own date. Keep FACT and assumptions apart.
9. Cite and log. The catalogue requires naming the primary investigator, the survey title with country, acronym and year, the reference number, the source and the download date. Citation format: The World Bank. Listening to the Citizens of Uzbekistan Survey 2018-2025 (L2CU 2018-25). Ref. UZB_2018-2025_L2CU_v03_M. Rounds [x to y], data collected [dates]. Downloaded from [URL] on [date]. Checked [date]. Add the disclaimer that the World Bank, the data collector and the funder are not responsible for the user's analysis. Then return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - every number below is invented and is not a statistic about Uzbekistan. Input: a juice brand asks whether households in Region A and Region B differ in the share reporting a fall in income, and how many households that means in Region A.

```
                                   Region A        Region B      Label
Households in panel (one round)        60              60        invented
Weighted share, income fell           30%             40%        invented
Margin of error (simple, 95%)      +/- 11.6 pts    +/- 12.4 pts  S2-03 formula
Range                            18.4% to 41.6%  27.6% to 52.4%
Ranges overlap -> a difference between regions cannot be claimed
Households in Region A (statistics agency, invented): 500,000
Planning number: 500,000 x 0.30 = 150,000; range 92,000 to 208,000
Pooling three rounds gives 180 interviews but still 60 households (Working rule)
```
Arithmetic check: 0.30 x 0.70 / 60 = 0.0035; square root = 0.0592; x 1.96 = 0.116. 0.40 x 0.60 / 60 = 0.0040; square root = 0.0632; x 1.96 = 0.124. 30 - 11.6 = 18.4; 30 + 11.6 = 41.6; 40 - 12.4 = 27.6; 40 + 12.4 = 52.4. 500,000 x 0.184 = 92,000; 500,000 x 0.416 = 208,000; 60 x 3 = 180.
Output wording: FACT is the weighted share with its round and range. The regional comparison is reported as "no difference shown", not as "the regions are the same".

## Common mistakes
- Reporting unweighted counts.
- Treating households as individuals, or one respondent's opinion as the household's.
- Counting pooled monthly interviews as if they were separate households.
- Comparing two regions from one round without ranges.
- Using it for brand, category or media questions it never asked.
- Describing the data as current without stating the last round and its date.
- Sharing the microdata files, or trying to work out who a household is.
- Citing "World Bank data" with no reference ID, round or download date.

## Quality checklist
- Was the catalogue entry opened today, and are reference ID, version and rounds recorded?
- Was the exact question wording and unit checked in the data dictionary?
- Were the round weights used?
- Is the number of households behind each figure shown, with a range?
- Is it stated who the phone panel misses?
- Were the access conditions followed, with files kept inside the agency?
- Is the citation complete, with source and download date?

## Output template
```
L2CU READING - [client / project] - checked [date]
Dataset: [title] | ref [ID] | version [..] | rounds [x-y], [dates] | URL ...
Question used: [wording] | unit: household / person | rounds asked: ...
FACT: weighted share [..]% | households n = [..] | range [..] to [..] | weights: yes
Breakdown: region / urban-rural ... | difference shown: yes / no
Who is missing: ...
PLANNING NUMBER (INTERPRETATION): [share] x [household count, source, date] = ...
Citation: The World Bank. Listening to the Citizens of Uzbekistan Survey 2018-2025
  (L2CU 2018-25). Ref. [ID]. Rounds [..]. Downloaded from [URL] on [date]. Checked [date].
```

## Works with
- S1-03 secondary (desk) research first: one entry in the desk research log. S0-07 3C and 5C situation analysis and S0-09 PESTEL: context sections. S0-13 facts, assumptions, unknowns register: logging.
- S2-02 sampling, S2-03 survey sample size and margin of error, S2-13 total survey error: judging what the panel can support. S4-10 crosstabs and significance tests: the analysis itself.
- S8-07 national statistics open data: household counts to multiply shares by. S8-05 Central Bank consumer sentiment review: expectations to set beside reported behaviour. S8-03 research validity in emerging markets and S2-07 triangulation: cross-checks.
- S4-23 market sizing and S5-09 needs-based segments: users of living-standards and regional evidence. S2-10 research ethics and consent: handling microdata.

## Notes for Uzbekistan
- Interviews were held in Uzbek and Russian; when quoting a question, give the original wording next to the translation (S3-03).
- A mahalla is the sampling unit here; do not report results by mahalla, since that risks identifying places.
- Regional comparisons are the main attraction and the main risk: Tashkent city is one stratum, each region has an urban and a rural stratum, and each is small in any one month.
- Phone answers to an interviewer may lean polite or agreeing (S3-07); treat opinion questions with more caution than factual ones.
- Do not state facts about Uzbek consumers from this source beyond what a dated, cited analysis shows.

## Sources
All pages opened and checked on 12 November 2026.
- IHSN Survey Catalog. Uzbekistan, Listening to the Citizens of Uzbekistan Survey 2018-2025. Open access metadata. https://catalog.ihsn.org/catalog/12626
- World Bank Microdata Library. Study description for the same dataset (created 8 December 2024, last modified 23 April 2025, metadata dated 7 August 2025). https://microdata.worldbank.org/catalog/6412/study-description
- World Bank Microdata Library. Get Microdata page (login required). https://microdata.worldbank.org/catalog/6412/get-microdata
- World Bank. Listening to the Citizens of Uzbekistan, country brief (page dated 11 March 2025). https://www.worldbank.org/en/country/uzbekistan/brief/l2cu
- Not opened: the data files themselves, the questionnaire PDFs and the Microdata Library general terms of use. Pages were read through an automated page reader, so re-check details on the live page.
