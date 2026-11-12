---
name: s8-05-central-bank-consumer-sentiment
description: Finds, reads and cites the Central Bank of Uzbekistan quarterly Consumer Sentiment Review on income, spending, credit and saving expectations. Use for demand context in desk research.
---

# Central Bank consumer sentiment review (S8-05)

The Consumer Sentiment Review is a short report published each quarter by the Central Bank of the Republic of Uzbekistan and prepared by its Monetary Policy Department. It summarises a survey in which people say how they expect their income, spending, borrowing and saving to change, and how they see the economy over the next 12 months and three years. The reviews for the first and second quarters of 2026 each say that about 4,100 respondents took part and that the survey was run in the month after the quarter ended (April 2026 and July 2026). They report four sub-indices: income, expenditure, credit and saving. The method is described only in a footnote: each answer gets a weight (large increase 100, small increase 75, no change 50, small decrease 25, large decrease 0) and the weighted answers are combined, so the scale runs from 0 to 100 and 50 means expectations are unchanged. The reviews also split answers by income band, age group, sector of activity and source of income.

What is not stated in the documents opened (checked 12 November 2026): how respondents were chosen, how they were interviewed (phone, online, in person), which regions are covered, whether results are weighted to the population, the response rate, the margin of error, the question wording, and a combined index value. The footnote sits in the income section and the document does not say outright that the other three sub-indices use the same weights.

Evidence grade: B. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. It is B because it is an official, regular publication from the central bank that states its sample size and its index scale. It is not A because the sampling and interview method are not published, so a reader cannot judge who is missing from the sample. Its main limit: it records expectations, not purchases. Use it as background on the mood of households, never as a forecast of sales.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (a figure read in the review today, with its quarter) versus INTERPRETATION (what it might mean for the client). Open the live source every time; never reuse the example figures in this skill. Do not state any figure about Uzbekistan from memory. When done, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A situation analysis needs context on household demand: are people expecting more or less income, spending, borrowing, saving.
- A category depends on credit or on large planned purchases, and the team wants to know which way stated expectations moved over recent quarters.
- A hypothesis about a slowdown or a recovery needs one official outside reference.

Do not use it when:
- The team needs a sales forecast, a market size or a category figure. The source has none.
- Regional results are needed. The reviews opened gave no regional breakdown.
- A small move in a sub-index would be used as proof of change. No margin of error is published.

## What you need before starting (inputs)
1. The client decision and the category (is it paid from income, credit or savings; is it a large or a routine purchase).
2. Internet access to cbu.uz today.
3. The client's own sales by quarter, if any, to set beside the survey.
4. The facts, assumptions, unknowns register (S0-13) to log what was read.

## Procedure
1. Open the reviews list at https://cbu.uz/en/press_center/reviews/ and find the newest Consumer Sentiment Review. Do not confuse it with the Business Sentiment Review, which surveys entrepreneurs. Record the quarter, the date on the list and the data cut-off date printed in the review. If the page or the PDF cannot be opened, say so and stop.
2. Note the publication lag. Example of what the source contained on the date checked, re-check before use: the review for the second quarter of 2026 had a data cut-off of 15 July 2026 and appeared in the reviews list dated 5 October 2026. Working rule: always say which quarter the figures describe and how old they are.
3. Read the method footnote in the review itself. Confirm the number of respondents, the survey month, the answer weights and the scale. Write "not stated" for anything missing; do not assume the method of earlier quarters still applies.
4. Read the sub-indices correctly. The scale is 0 to 100 and the neutral point is 50, not 100 as in some other countries' sentiment indices. A sub-index above 50 means more people expect an increase than a decrease, weighted by strength. It is not a percentage of people. Example of what the source contained on the date checked, re-check before use: the review for the second quarter of 2026 gave an income sub-index of 71.3, down 1.5 points on the previous quarter.
5. Keep sub-indices and shares apart. The press releases report shares of respondents (for example the share expecting higher income); the full reviews report sub-indices as well. Never mix the two in one chart or sentence.
6. Read the direction of each sub-index with care. A higher expenditure sub-index means people expect to spend more, which can reflect rising prices and not a wish to buy more. A higher credit sub-index means more expected borrowing, which can signal either confidence or need. State both readings as INTERPRETATION.
7. Compare over time inside the same publication series only. Working rule: because no margin of error is published, treat a change of less than 2 points as no change, and look for the same direction over at least three quarters before calling it a trend.
8. Treat breakdowns by income band, age or sector as hints. The number of respondents in each group is not given, so small groups may be unstable. Check whether the bands are the same as in the earlier quarter before comparing; the income bands differed between the documents opened.
9. Link to the client's question as context, not proof. Expectations are stated intentions (S1-23). Set the direction beside behaviour data: the client's sales, official retail and price statistics (S8-07), household panel data (S8-06). Where they disagree, report the disagreement (S2-07).
10. Cite and log. Citation format: Central Bank of the Republic of Uzbekistan. Consumer Sentiment Review, [quarter and year]. Data cut-off [date]; survey of about [n] respondents in [month]. [URL of the review or PDF]. Checked [date]. Then return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - every number below is invented and is not a statistic about Uzbekistan. Input: a housing developer asks whether "the income index is 65" means that 65% of people expect higher income, and how to use it in planning.

```
Answer (invented shares)        Share    Weight    Share x weight
Large increase                   20%       100         20.0
Small increase                   40%        75         30.0
No change                        25%        50         12.5
Small decrease                   10%        25          2.5
Large decrease                    5%         0          0.0
Sub-index                       100%                   65.0
Share expecting any increase: 20% + 40% = 60% (not 65%)
Planning use: base plan 1,000 flats a year (client FACT). Scenario test only:
  cautious case minus 10% = 900; hopeful case plus 10% = 1,100.
  The survey chooses which case to watch; it does not set the size of the case.
```
Arithmetic check: 0.20 x 100 = 20.0; 0.40 x 75 = 30.0; 0.25 x 50 = 12.5; 0.10 x 25 = 2.5; 0.05 x 0 = 0.0; 20.0 + 30.0 + 12.5 + 2.5 + 0.0 = 65.0; shares 20 + 40 + 25 + 10 + 5 = 100; 1,000 x 0.90 = 900; 1,000 x 1.10 = 1,100.
Output wording: FACT is the sub-index and its quarter. The plus or minus 10% is a Working rule for scenario planning and comes from no source.

## Common mistakes
- Reading a sub-index of 70 as "70% of people".
- Treating 100 as the neutral point; here it is 50.
- Turning an expectation into a sales forecast.
- Calling a move of half a point a change in mood.
- Quoting a press-release share and a review sub-index as if they were the same measure.
- Describing the survey as nationally representative; the documents opened do not say how the sample was drawn.
- Using the Business Sentiment Review by mistake.
- Reusing last quarter's figures, or the examples in this skill, without opening the newest review.

## Quality checklist
- Was the newest review opened today, and are the quarter, cut-off date and list date recorded?
- Are the respondent count and survey month copied from this review, with "not stated" where missing?
- Is every figure labelled as a sub-index (0 to 100, neutral 50) or a share of respondents?
- Is each result worded as an expectation, not as behaviour?
- Are small changes held back under the stated Working rule?
- Was at least one behaviour source set beside it?
- Is the citation complete, including the date checked?

## Output template
```
CONSUMER SENTIMENT READING - [client / project] - checked [date]
Review: [quarter, year] | data cut-off [date] | listed [date] | URL ...
Method as stated: respondents ... | survey month ... | scale 0-100, neutral 50
Not stated: sampling ... | mode ... | regions ... | margin of error ...
FACT: income [..] ([change]) | expenditure [..] | credit [..] | saving [..]
FACT (shares, if used): ...
INTERPRETATION for [category]: ... | alternative reading: ...
Behaviour check (S2-07): source ... | agrees / disagrees
Citation: Central Bank of the Republic of Uzbekistan. Consumer Sentiment Review,
  [quarter year]. Data cut-off [date]; about [n] respondents in [month]. [URL]. Checked [date].
```

## Works with
- S1-03 secondary (desk) research first: one entry in the desk research log. S0-07 3C and 5C situation analysis and S0-09 PESTEL: the economic context section. S0-13 facts, assumptions, unknowns register: logging.
- S1-23 prefer behaviour over stated reasons and S4-08 say-do analysis: why expectations need a behaviour check. S2-07 triangulation and S2-13 total survey error: judging the survey.
- S8-06 Listening to the Citizens of Uzbekistan survey and S8-07 national statistics open data: behaviour and living-standards sources to set beside it. S8-03 research validity in emerging markets: general cautions.
- S4-23 market sizing and S6-06 95-5 rule: scenario ranges, never point forecasts. S7-03 before and after tracking with benchmark: outside context when reading a client's own trend.

## Notes for Uzbekistan
- The reviews exist in Uzbek and in English, and the site has a Russian version. Working rule: if language versions differ, cite the one you read and name its language; check key terms against the Uzbek original (S3-03).
- English file names and titles vary from quarter to quarter, so search the reviews list by date and not by file name.
- Polite or hopeful answer habits can lift stated expectations (S3-07). The source does not discuss this; treat levels with more caution than changes.
- No regional split was found, so do not apply the national mood to one region or to Tashkent alone without other evidence.
- Do not state facts about Uzbek consumers from this source beyond what the dated review says.

## Sources
All pages opened and checked on 12 November 2026.
- Central Bank of the Republic of Uzbekistan. Consumer Sentiment Review, Q2 2026 (PDF, data cut-off 15 July 2026). https://cbu.uz/upload/iblock/ed4/qqka5pcfakpiv5fgbu4zb7kq1ei11qfw/Consumer-sentiment-review-_2_.pdf
- Central Bank of the Republic of Uzbekistan. Consumer Sentiment Review, Q1 2026 (PDF, data cut-off 15 April 2026). https://cbu.uz/upload/iblock/6f6/27a8trez9jtvopim9thezfxot6xdyr31/Consumer-sentiment-review-2026-Q1.pdf
- Central Bank, reviews list (Q2 2026 review listed 5 October 2026; Q1 2026 listed 23 June 2026). https://cbu.uz/en/press_center/reviews/
- Central Bank, press release, Consumer Sentiment Review for Q4 2025 (dated 9 April 2026; shares only, no sample size or method). https://cbu.uz/en/press_center/releases/3721949/
- Central Bank, press release, Consumer Sentiment Review Q3 2025 (dated 5 January 2026). https://cbu.uz/en/press_center/releases/3234574/
- Central Bank, executive summary, Consumer Sentiment Review Q4 2025 (PDF, no method stated). https://cbu.uz/upload/medialibrary/ab6/bdcw8j4dxrlkxtn45vf07z8lbg3vo722/ExecutiveSummary_Istemol_kayfiyati_eng.pdf
- Opened but without survey content: the Q1 2026 review page https://cbu.uz/en/press_center/reviews/4038031/ returned only site navigation and exchange rates. Not found: a separate methodology document for the survey. Pages were read through an automated page reader, so re-check numbers on the live page.
