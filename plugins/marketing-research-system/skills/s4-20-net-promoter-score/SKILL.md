---
name: s4-20-net-promoter-score
description: Calculates Net Promoter Score with its margin of error and reports it as a cautious tracking number. Use when a client asks for NPS or wants to compare NPS waves.
---

# Net Promoter Score, used with caution (S4-20)

Net Promoter Score (NPS) was introduced by Frederick Reichheld in a 2003 Harvard Business Review article. Customers answer one question, how likely they are to recommend a company to a friend or colleague, on a 0 to 10 scale; the score is the percentage of promoters (9 or 10) minus the percentage of detractors (0 to 6). Reichheld presented it as the best single predictor of company growth. Evidence grade: B, contested. It is an established professional standard that almost every client knows, but the growth claim has not held up well in independent testing. Critics noted that the original work related scores to past growth using simple correlations. Keiningham and colleagues (2007) could not reproduce the claimed superiority over other measures. Morgan and Rego (2006) reported little predictive value, although their measure was later shown not to be true NPS. Reviews find NPS performs about as well as satisfaction measures, not better. Baehre and colleagues (2022) found it predicted sales growth only under specific conditions. So: use NPS as one tracking number among several, never as a forecast of growth and never as the only number.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (observed in data or in a cited source) or INTERPRETATION (your inference).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The client already tracks NPS or their management asks for it, and the task is to calculate and report it correctly.
- A simple repeated measure of customer attitude is needed and the same question, scale and sample design can be kept from wave to wave.
- The team wants to check whether a recent service or marketing change moved customer attitude.
Do not use it when:
- The client wants a growth forecast or a target such as "raise NPS by 10 and sales will grow by X". The evidence does not support that.
- The sample is small (see step 6) or drawn differently each time.
- The question is why customers are satisfied or not. NPS gives no reasons; use S4-14 or qualitative work.
- The purpose is to rank staff or branches on small monthly samples. The noise is larger than the differences.

## What you need before starting (inputs)
- Raw answers on the 0 to 10 scale, one row per respondent, not a ready-made score.
- Exact question wording, scale labels, language of each interview and survey channel.
- Who was asked: current customers after a contact, all current customers, or all category buyers including non-customers.
- Sample size, how respondents were selected, response rate if known, field dates; previous waves in the same format, and any other measures collected (satisfaction, repurchase, reasons).

## Procedure
1. Clarify the decision. Ask: "What will you do differently depending on this number?" If the answer is a budget or growth forecast, explain the evidence in step 9 and propose NPS as a tracker beside other measures.
2. Check the question. Standard form: "How likely is it that you would recommend [company] to a friend or colleague?" with 0 = not at all likely and 10 = extremely likely. If another scale (1 to 5, 1 to 10) or other cut-offs were used, say the result is not comparable with standard NPS or published benchmarks; studies that used non-standard versions are hard to compare.
3. Record who was asked. Mark the sample as (a) transaction sample: customers right after a contact, (b) relationship sample: current customers in general, or (c) brand-health sample: category buyers including non-customers. Never mix these in one trend line.
4. Clean the data. Remove duplicates and test entries; keep "don't know" as missing, not as 0 or 5. Report how many were removed.
5. Calculate. Promoters = share answering 9 or 10; passives = 7 or 8; detractors = 0 to 6. NPS = % promoters minus % detractors, a whole number from -100 to +100. Always show the three percentages and the full 0 to 10 distribution next to the score: very different distributions give the same NPS.
6. Calculate the margin of error. With p = share of promoters, d = share of detractors (as proportions) and n = sample size: variance = p + d - (p - d)^2; standard error = square root of (variance / n); 95% margin = 1.96 x standard error (formula from Rocks 2016). This simple formula is too optimistic for small samples; the same paper recommends an adjusted method there. Working rule of this skill: below n = 100 report the three percentages and do not publish a trend; a "net" score needs a larger sample than a mean to reach the same precision.
7. Compare waves or groups properly. Standard error of a difference = square root of (SE1^2 + SE2^2). Call a change real only if it is larger than 1.96 x that value. Otherwise write "no detectable change". Use S4-10 for subgroup tests.
8. Add at least two companion measures. Mean and top-two-box overall satisfaction on the same respondents, plus one behavioural measure (repeat purchase, retention, complaints). Morgan and Rego found average satisfaction the most useful predictor in their data; reviews find NPS and satisfaction highly correlated. If NPS and satisfaction move in different directions, report both and investigate.
9. State what the evidence allows. Use these sentences as a base:
   - FACT: Reichheld (2003) reported that in most industries he studied the share of enthusiastic recommenders went together with growth.
   - FACT: Keiningham and colleagues (2007), using 21 firms and over 15,500 interviews from the Norwegian Customer Satisfaction Barometer, did not find NPS superior to other measures.
   - FACT: Baehre and colleagues (2022), using seven US sportswear brands over five years, found that only changes in NPS (not levels), measured among all potential customers (not only current ones), predicted sales growth, and mainly in the short term.
   - INTERPRETATION: for this client NPS is a signal of attitude change, not proof of future sales.
10. Find reasons. Read the open "why did you give this score" answers by group (detractors, passives, promoters) and code them (S4-21). If rating questions exist, run S4-14 to see what is associated with the recommend score.
11. Report with the output template. Give the score with its margin, the distribution, companion measures, what changed and what did not, and limits. Return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a furniture maker surveys buyers by Telegram bot three months after delivery. Wave 1: n = 400, promoters 36%, passives 37%, detractors 27%. Wave 2: n = 400, promoters 40%, passives 35%, detractors 25%. Management says "NPS grew from 9 to 15, sales will grow".

Output:
- Wave 1 NPS = 36 - 27 = +9. Variance = 0.36 + 0.27 - 0.09^2 = 0.622; SE = 0.039; margin = about 8 points.
- Wave 2 NPS = 40 - 25 = +15. Variance = 0.40 + 0.25 - 0.15^2 = 0.628; SE = 0.040; margin = about 8 points.
- Difference = 6 points. SE of difference = 0.056; a change must exceed about 11 points to be detectable. FACT: the 6-point rise is inside the noise.
- Companion measures: mean satisfaction 7.9 then 8.0; repeat orders within 12 months 11% then 11%. FACT: no movement.
- INTERPRETATION: there is no evidence yet that attitude improved. The sample covers recent buyers who use Telegram and agreed to answer; it says nothing about non-buyers.
- Recommendation: keep the question unchanged, pool two waves per half-year to reach n = 800, and stop linking the score to a sales forecast.

## Common mistakes
- Reporting the score without the sample size, the margin of error or the three percentages, or treating a few points of movement between small waves as a result.
- Promising growth from a higher NPS, or setting bonuses on it, which invites staff to press customers for a 9 or 10.
- Comparing with "industry benchmarks" collected with another scale, channel, country or sample type.
- Mixing post-transaction answers with a general customer survey in one trend, or reading a current-customer score as brand health in the whole market.
- Treating a 6 the same as a 0 without looking at the distribution, or dropping satisfaction and behaviour measures because "one number is enough".

## Quality checklist
- Was the standard question and 0 to 10 scale used, or the deviation stated? (yes/no)
- Is the sample type (transaction, relationship, brand health) named and kept constant across waves? (yes/no)
- Are the three percentages and the full distribution shown with the score? (yes/no)
- Is a margin of error given, and is every claimed change larger than the noise? (yes/no)
- Are at least two companion measures reported beside NPS? (yes/no)
- Does the report avoid any growth forecast based on NPS and state the contested evidence and sample limits? (yes/no)
- Are open-answer reasons analysed by group? (yes/no)

## Output template
```
NPS REPORT (S4-20)
Decision this number serves:
Question wording (original language):            Scale:
Sample type: transaction / relationship / brand health
Channel:            Field dates:            n (after cleaning):       Removed:
Distribution 0-10 (% per score):
Promoters (9-10): __%   Passives (7-8): __%   Detractors (0-6): __%
NPS = __   95% margin: +/- __ points
Trend
| Wave | n | Promoters | Detractors | NPS | Margin |
Change versus previous wave: __ points; needed to be detectable: __ points
Verdict: detectable change / no detectable change
Companion measures (same respondents)
| Measure | Previous | Current | Change detectable? |
Reasons by group (coded open answers, original-language quotes):
  Detractors:        Passives:        Promoters:
FACT statements:
INTERPRETATION statements:
What this number cannot tell us:
Evidence note: NPS is contested as a growth predictor (Keiningham et al. 2007; Baehre et al. 2022).
Next step:
```

## Works with
- S1-08 surveys: question wording, sampling and field rules for collecting the answers.
- S1-22 brand health tracking: place NPS inside a tracker with awareness and usage; needed if the brand-health version (all category buyers) is wanted.
- S4-10 crosstabs and tests: subgroup comparisons and significance tests.
- S4-14 key driver analysis: what is associated with the recommend score.
- S4-21 content analysis: coding the open "why" answers.
- S4-18 Double Jeopardy benchmarks: larger brands normally show somewhat higher loyalty measures, so judge a score against brand size.
- S7-01 KPI hierarchy: decide where NPS sits and which business measure stands above it.

## Notes for Uzbekistan
- Ask the question in the respondent's language and keep the Uzbek and Russian wordings fixed between waves; report results by interview language if samples allow. Keep open answers in the original language.
- Polite or agreeing answer habits can push scores upward. The 9-10 and 0-6 cut-offs were set on Western samples; whether a 7 or 8 means the same here is unknown. Treat levels with care, compare only with your own earlier waves, and treat any imported benchmark as a hypothesis.
- Telegram-bot samples miss older and rural customers. State who is missing; do not present the score as "all customers".
- Report Tashkent and the regions separately when sample sizes permit; a merged score can hide opposite movements. Answers given to a company employee, by phone or in person, are likely to be more favourable than anonymous ones. Do not mix channels in one trend.

## Sources
- Original: Reichheld, F. F. (2003). The One Number You Need to Grow. Harvard Business Review, December 2003. Paid; only the opening part was readable. https://hbr.org/2003/12/the-one-number-you-need-to-grow
- Keiningham, T. L., Cooil, B., Andreassen, T. W., & Aksoy, L. (2007). A Longitudinal Examination of Net Promoter and Firm Revenue Growth. Journal of Marketing, July 2007. Paid; not opened. Opened: Ipsos summary "Net Promoter: A Longitudinal Examination". https://www.ipsos.com/en-us/node/125981
- Morgan, N. A., & Rego, L. L. (2006). The Value of Different Customer Satisfaction and Loyalty Metrics in Predicting Business Performance. Marketing Science, 25(5), 426-439. Paid; abstract opened. https://econpapers.repec.org/RePEc:inm:ormksc:v:25:y:2006:i:5:p:426-439
- Keiningham, T. L., Aksoy, L., Cooil, B., & Andreassen, T. W. (2008). Net Promoter, Recommendations, and Business Performance: A Clarification on Morgan and Rego. Marketing Science, 27(3), 531-532. Abstract opened. https://econpapers.repec.org/RePEc:inm:ormksc:v:27:y:2008:i:3:p:531-532
- Baehre, S., O'Dwyer, M., O'Malley, L., & Lee, N. (2022). The use of Net Promoter Score (NPS) to predict sales growth. Journal of the Academy of Marketing Science, 50, 67-84. Open access. Opened: https://wrap.warwick.ac.uk/154989 and https://ul.ie/media/21280/download
- Opened: Sauro, J. (2019). Has the Net Promoter Score Been Discredited in the Academic Literature? MeasuringU. https://measuringu.com/?p=557
- Opened: Rocks, B. (2016). Interval Estimation for the 'Net Promoter Score'. arXiv preprint (source of the variance formula). https://arxiv.org/pdf/1601.07235
