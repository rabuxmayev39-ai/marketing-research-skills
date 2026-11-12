---
name: s0-05-growth-decomposition
description: Splits a sales problem into number of buyers, purchases per buyer and value per purchase to find which term is the gap. Use at intake when a brief says grow sales or increase loyalty.
---

# Growth decomposition: penetration versus loyalty (S0-05)

Growth decomposition is a diagnostic question asked at intake: is the brand short of buyers, or do its buyers buy too little? It rests on simple arithmetic (sales = number of buyers x purchases per buyer x value per purchase) and on an empirical pattern called Double Jeopardy. The pattern says that a brand with a smaller market share has fewer buyers and, in addition, those buyers are somewhat less loyal; loyalty can largely be predicted from the brand's size. William McPhee named it in 1963, Andrew Ehrenberg and colleagues showed it in brand buying (Ehrenberg, Goodhardt and Barwise, 1990), and Byron Sharp's How Brands Grow (2010) and the Ehrenberg-Bass Institute made it widely known. The practical reading is that brands differ greatly in penetration (the share of category buyers who buy the brand in a period) and only a little in loyalty, so a small brand's sales problem is almost always a shortage of buyers. This skill covers only the intake diagnosis; S4-18 holds the benchmarks and S6-03 the growth strategy.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Double Jeopardy has been reported in peer-reviewed journals for decades and across many categories; an Ehrenberg-Bass report opened for this skill lists nine published business-to-business studies from 1975 to 2018 alone. The grade applies to the pattern, not to this skill's quick use of it. Limits and criticism: the evidence is mostly descriptive, comparing brands at one time, although the Institute cites longer-term studies in which brands that gained or lost share changed mainly in penetration. Known exceptions exist: niche brands (few buyers, unusually loyal) and change-of-pace brands (many buyers, low repeat). Kantar reports that in 190 UK grocery categories about one brand in five did not fit well, with many small brands bought less often than their penetration predicted. An Ehrenberg-Bass working paper found the underlying model fits less well for small brands and over long periods. The Institute itself rejects the reading that brands grow only by new customers: existing buyers also buy slightly more. The diagnosis needs purchase data or a survey proxy, and the pattern is less tested in very fragmented, unbranded categories. Use it as a strong default, then check it.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (counts from records, panels or surveys) versus INTERPRETATION (which term is the gap, and why). State the buyer universe and period with every number. When the gap is named, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The brief says "grow sales", "increase loyalty", "raise frequency" or "work with our base".
- A loyalty programme, CRM campaign or retention target is proposed and nobody has checked whether loyalty is the gap.
- The team needs a first arithmetic cut for an issue tree (S0-03).

Do not use it when:
- No count of buyers can be obtained or estimated at all. Plan a survey proxy first (S1-08).
- The question is whether loyalty is normal for the brand's size against all rivals. That is S4-18.
- The category is new and has almost no buyers yet. Use S6-12 and S4-23.

## What you need before starting (inputs)
1. A defined category, brand list, period (month, quarter or year) and buyer universe (which people, households or firms count as category buyers). The Ehrenberg-Bass report stresses that penetration depends on this definition and that it must be the same for every brand and period.
2. For the brand: sales value, number of buyers, number of purchases, for at least two periods or against at least two rivals.
3. A data source: purchase panel or retail data if available; the client's own customer records; or a survey of category buyers asking which brands they bought in the period and how often (S1-08).
4. The client's target in numbers.

## Procedure
1. Fix the definitions from input 1 in writing before touching numbers.
2. Write the identity: sales = buyers x purchases per buyer x value per purchase, where buyers = category buyers x penetration. This is arithmetic, not theory; the three terms must multiply back to sales.
3. Fill in the three terms for the brand and for the largest rivals, or for the brand in two periods. Mark each number FACT with its source, or estimate.
4. Compare ratios, not differences. For each term divide the leader's value by the brand's. Under Double Jeopardy expect a large ratio on buyers and a small one on purchases per buyer.
5. Name the gap with these reading rules (working rules built on the sources):
   - Buyers far lower, purchases per buyer only a little lower than bigger rivals: normal pattern. The gap is buyers. Default hypothesis: more people must find the brand easy to think of and easy to buy (S6-03).
   - Purchases per buyer clearly below brands of similar size: possible real problem with repeat buying (product, availability, price) or a change-of-pace role. Investigate before any reach plan (S4-18, S1-16).
   - Purchases per buyer clearly above brands of similar size with low penetration: niche pattern. The Ehrenberg-Bass report links such excess loyalty to restricted distribution or a narrow sub-market, and reads it as a sign of missing buyers, not as a strength to defend.
   - Value per purchase is the main difference: a price or pack-size question (S6-13).
6. Test the client's target against the terms. Calculate what the target would require through buyers only and through purchases per buyer only. Working rule: if the frequency route needs a rate above that of the category leader, call it implausible and say so.
7. Note the category type. In repertoire categories (buyers use several brands) loyalty is purchase frequency or share of the buyer's category purchases; in subscription categories (one main supplier, such as a bank) it is retention and length of stay, and the Institute says growth there comes from recruiting new customers.
8. If the buyer numbers come from a survey, state the risks: recall of purchases is imperfect, and samples that miss non-customers cannot give penetration. Treat the result as INTERPRETATION until checked (S2-13).
9. Write the result as a hypothesis with its evidence, pass depth questions to S4-18 and the growth plan to S6-03, and return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a juice brand. Brief: "Our buyers are not loyal enough. We want a loyalty promotion to grow sales 30%." Universe: 1,000,000 households in Tashkent that bought packaged juice in the quarter (invented).

```
                     Brand            Leader           Leader / Brand
Penetration          8%               30%
Buyers (households)  80,000           300,000          3.75
Purchases per buyer  2.5              3.0              1.20
Value per purchase   14,000 soums     14,500 soums     1.04
Sales per quarter    2.80 bn soums    13.05 bn soums   4.66
READING (INTERPRETATION)
The leader sells 4.66 times more. Almost all of it is buyers (3.75 times);
frequency differs by a fifth, as Double Jeopardy would predict for a smaller
brand. The brand's loyalty looks normal for its size (to confirm in S4-18).
TARGET CHECK: +30% = 3.64 bn soums
Through frequency only: 2.5 x 1.3 = 3.25 purchases per buyer, above the
  leader's 3.0 -> implausible
Through buyers only: 80,000 x 1.3 = 104,000 households = 10.4% penetration
CONCLUSION: the gap is buyers. A loyalty promotion aims at the wrong term.
Hand over: S6-03 for the plan; check distribution as a possible barrier.
```
Arithmetic check: 1,000,000 x 0.08 = 80,000; 1,000,000 x 0.30 = 300,000; 80,000 x 2.5 = 200,000 purchases x 14,000 = 2,800,000,000; 300,000 x 3.0 = 900,000 x 14,500 = 13,050,000,000; 300,000 / 80,000 = 3.75; 3.0 / 2.5 = 1.20; 14,500 / 14,000 = 1.036; 3.75 x 1.20 x 1.036 = 4.66; 13.05 / 2.80 = 4.66; 2.80 x 1.3 = 3.64; 104,000 x 2.5 x 14,000 = 3,640,000,000; 104,000 / 1,000,000 = 0.104.

## Common mistakes
- Accepting "low loyalty" from the brief without comparing loyalty with brands of similar size.
- Comparing a small brand's frequency with the leader's and calling the normal difference a problem.
- Changing the buyer universe or period between brands.
- Counting only the client's own customers, which gives no penetration.
- Reading the pattern as "loyalty does not matter" or "only new buyers count"; the Institute rejects both.
- Treating a descriptive pattern as proof that a given action will bring buyers.
- Going deep into benchmarks here instead of handing over to S4-18.

## Quality checklist
- Are category, universe and period written down and identical for all brands?
- Do the three terms multiply back to sales for each brand?
- Is each number marked with its source or as an estimate?
- Were ratios compared with at least one larger rival or one earlier period?
- Is the gap named with one of the four reading rules?
- Was the client's target tested through each term?
- Are exceptions (niche, change-of-pace, subscription category) considered?
- Is the conclusion labelled a hypothesis with the hand-over stated?

## Output template
```
GROWTH DECOMPOSITION - [brand] - [category] - [period] - [date]
Universe: ... | data source: ... | category type: repertoire / subscription
                     Brand    Rival 1    Rival 2    Ratio rival 1 / brand
Penetration          ...
Buyers               ...
Purchases per buyer  ...
Value per purchase   ...
Sales                ...      (check: buyers x purchases x value = sales)
Gap is in: buyers / purchases per buyer / value | reading rule used: ...
Target: ... | via buyers only: ... | via frequency only: ... | plausible? ...
Exceptions considered: ... | data risks: ...
HYPOTHESIS (INTERPRETATION): ... | hand over to: S4-18 / S6-03 / other
```

## Works with
- S4-18 Double Jeopardy and duplication benchmarks: the full check of whether loyalty is normal for size. S6-03 growth through penetration: the strategy that follows a "buyers" gap.
- S0-03 issue tree: this identity as the first cut. S0-06 brand and sales funnel diagnosis: where potential buyers are lost. S0-01 strategy kernel: the gap as part of the diagnosis.
- S1-08 usage and attitude surveys, S2-02 sampling, S2-13 total survey error: building and judging a survey proxy. S1-03 desk research first: looking for existing purchase data.
- S4-23 market sizing: the buyer universe. S4-19 mental availability metrics and S1-21 Category Entry Point research: why non-buyers do not think of the brand.
- S6-13 value-based pricing: when value per purchase is the gap. S7-01 objective and KPI hierarchy: setting penetration and frequency targets.

## Notes for Uzbekistan
- Household purchase panels may not be available for the category; check before promising panel-style numbers. A survey proxy is the likely route, with its recall limits.
- Telegram-bot surveys miss older and rural people, so penetration from such a sample describes that sample only. State the universe honestly.
- Much food is sold loose or unbranded in bazaars. This is the fragmented, unbranded setting where the pattern is less tested; define the category with care and treat results as hypotheses.
- Tashkent and the regions may differ in distribution; calculate the terms separately before adding them.
- Polite answer habits can inflate claimed buying. Ask about the last purchase and specific occasions (S1-23, S3-01), in Uzbek or Russian as the respondent prefers.

## Sources
- Original: Ehrenberg, A. S. C., Goodhardt, G. J., and Barwise, T. P. (1990). Double Jeopardy revisited. Journal of Marketing, 54(3), 82-91. https://doi.org/10.1177/002224299005400307 Paid; not opened.
- Original: Sharp, B. (2010). How Brands Grow. Oxford University Press. Paid; not opened.
- Opened, institute report: Romaniuk, J., Dawes, J., and Faghidno, S. The Double Jeopardy Law in B2B Shows the Way to Grow. Ehrenberg-Bass Institute with the LinkedIn B2B Institute. https://business.linkedin.com/content/dam/lem/business/en/advertise/resources/b2b-institute/b2b-buying-behaviour-double-jeopardy.pdf
- Opened, institute page: Answering critics. Ehrenberg-Bass Institute. https://marketingscience.info/news-and-insights/answering-critics
- Opened, university repository: Dunn, S., Graham, C., Nenycz-Thiel, M., and Tanusondjaja, A. Marketing research faces two challenges and a world of opportunity with long-term panel data. London South Bank University. https://openresearch.lsbu.ac.uk/download/4fb6279dbd00ac30f60dac98cb97ef330905f3d337e3417df97df59d2b255d5c/736218/SSRN-id3880203.pdf
- Opened, research company article (criticism): Diary of a CMO: I am a small brand with big dreams, how can I grow faster? Kantar. https://www.kantar.com/inspiration/brands/diary-of-a-cmo-i-am-a-small-brand-with-big-dreams-how-can-i-grow-faster
- Opened, for the history and the two named exceptions only: Double jeopardy (marketing). Wikipedia. https://en.wikipedia.org/wiki/Double_jeopardy_(marketing)
