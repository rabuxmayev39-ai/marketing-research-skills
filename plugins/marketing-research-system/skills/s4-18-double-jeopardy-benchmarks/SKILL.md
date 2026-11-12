---
name: s4-18-double-jeopardy-benchmarks
description: Checks whether a brand's loyalty and its customer sharing with rivals are normal for its size. Use before setting loyalty targets or naming main competitors.
---

# Double Jeopardy and Duplication of Purchase benchmarks (S4-18)
Two empirical patterns let a team judge a brand against what is normal for its size. Double Jeopardy: a smaller brand has fewer buyers, and those buyers are also somewhat less loyal; loyalty is largely predictable from market share. William McPhee described it in 1963, and Ehrenberg, Goodhardt and Barwise set it out for marketers in "Double Jeopardy Revisited" (Journal of Marketing, 1990). Duplication of Purchase: a brand shares its buyers with each rival roughly in proportion to the rival's size, not according to positioning. Both are central to Byron Sharp's How Brands Grow and to Ehrenberg-Bass Institute work, including John Dawes's studies of duplication. Evidence grade: A, tested in peer-reviewed research and replicated across many categories and countries, including business markets. Put strong weight on the benchmarks for diagnosis and target setting. The explanation of why the patterns occur (availability) is an interpretation by the authors, and the patterns should still be confirmed in the local data.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (computed from the data) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- A client asks "is our loyalty low?", "who are our real competitors?" or wants a loyalty or retention target.
- Data exist on which brands each buyer bought in a set period, for at least five or six brands (working rule; published tests use 8 to 20 brands).
Do not use it when:
- Only the client's own customers were surveyed. The benchmarks need category buyers and all main brands.
- The category definition is unclear; fix what counts as the category first.
- The sample of a brand's buyers is very small. Working rule: do not read a row based on fewer than about 30 buyers.

## What you need before starting (inputs)
- One row per category buyer in Excel or Google Sheets, with a column per brand: bought in the period (1 or 0), and if possible the number of purchases.
- Source of the data: panel, sales records, or a survey question such as "which of these brands did you buy in the last three months?" (the format used in Dawes's published example).
- The same time period and the same customer universe for all brands.
- For subscription-type markets (one supplier at a time, such as a bank or mobile operator): current brand and brand 12 months ago, so that defection replaces purchase frequency.

## Procedure
1. Decide the category type. In repertoire categories buyers use several brands; loyalty measures are purchase frequency, share of the buyer's category purchases, and the share buying only one brand. In subscription categories the measures are defection or retention and tenure. Penetration applies to both.
2. Compute penetration (b) for each brand: buyers of the brand divided by all category buyers. `=SUM(B2:B301)/COUNT(B2:B301)` for a 1/0 column.
3. Compute the loyalty measure for each brand. For purchase frequency (w): average number of purchases among the brand's buyers, `=AVERAGEIF(B2:B301,1,C2:C301)` where C holds purchase counts. Sort brands from highest to lowest penetration. First FACT check: does loyalty fall as penetration falls?
4. Compute the Double Jeopardy benchmark. The approximation credited to Goodhardt and Chatfield is w x (1 - b) = constant.
   - For each brand compute w x (1 - b).
   - Average these values across brands; call the average w0.
   - Expected w for a brand = w0 / (1 - b).
   - Deviation = (actual w - expected w) / expected w.
   A published replication paper treats a deviation above about 10% as worth examining, and judges the overall fit acceptable when actual and expected values correlate above 0.6 with an average error under 20%. Working rule: if one brand is far off, recompute w0 without it so it does not distort the benchmark.
5. Interpret deviations with care.
   - Loyalty in line with size: normal. A plan to grow mainly by raising loyalty far above the benchmark is unrealistic; Ehrenberg-Bass authors warn against targets such as "increase loyalty by 50%".
   - Excess loyalty (higher than expected for a small penetration): the most likely cause named in the Ehrenberg-Bass B2B report is restricted distribution, such as one region or one sub-market. It usually signals a penetration gap, not a strength.
   - Deficit loyalty: check for temporary causes first (promotion-driven trial, out-of-stocks, a recent launch).
   - Private labels often show higher frequency with lower penetration because their distribution is limited to one chain.
6. Build the duplication table. Rows are "buyers of brand X", columns are "who also bought brand Y", both ordered by penetration; leave the diagonal empty. Each cell = buyers of both X and Y divided by buyers of X. With 1/0 columns: `=COUNTIFS(B:B,1,C:C,1)/COUNTIF(B:B,1)`. Add a bottom row with the average of each column.
7. Compute the duplication benchmark. First FACT check: do the column averages fall in step with penetration? In Dawes's sportswear example the correlation between penetration and average duplication was 0.96. Then compute the duplication coefficient: D = average of the column averages divided by average penetration; expected duplication with brand Y = D x penetration of Y. This formula is the standard textbook calculation attributed to Ehrenberg and Goodhardt; it was not visible in the free pages opened for this skill, so check it against a paid source before quoting it as theirs.
8. Find partitions. Compare each cell with the expected value for its column. A group of brands that share buyers with each other clearly more than expected, in both directions, forms a partition, usually explained by a functional or other shared difference (Dawes found one among aspirin brands). No sourced threshold was found; working rule: flag cells more than about 5 points and more than a fifth above or below expected, and only when the row has enough buyers. Sharing above the benchmark points to a closer competitor than market share alone suggests.
9. Draw conclusions for the decision.
   - Competitors: the brand competes with all brands, most with the biggest. Name special rivals only where a partition appears.
   - Growth: Double Jeopardy implies that growth comes mainly from more buyers; retention matters but loyalty moves with size. Hand over to S6-03.
   - Targets: set loyalty targets from the benchmark at the planned penetration, w0 / (1 - planned b).
10. State the limits: recall errors in survey data, a single period, small bases for small brands, and whether the market was stable. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a flour mill (brand C) surveyed 300 bakeries about which flour brands they bought in the last three months and how many times.

| Brand | Penetration b | Purchases per buyer w | w x (1 - b) | Expected w | Deviation |
|---|---|---|---|---|---|
| A | 0.50 | 6.0 | 3.00 | 6.05 | -1% |
| B | 0.30 | 4.4 | 3.08 | 4.32 | +2% |
| C (client) | 0.20 | 3.7 | 2.96 | 3.78 | -2% |
| D | 0.10 | 3.4 | 3.06 | 3.36 | +1% |
| E | 0.08 | 5.2 | 4.78 | 3.29 | +58% |

w0 = 3.025, the average for A to D; E was left out after it showed as far off (FACT). Average duplication by column: with A 55%, B 33%, C 21%, D 11%; D coefficient = 120 / 110 = 1.09, so expected sharing is 55%, 33%, 22% and 11% (FACT). Buyers of other brands who also buy E: 3% against 9% expected (FACT).

Output: FACT: brand C's purchase frequency is within 2% of the benchmark. INTERPRETATION: C does not have a loyalty problem; it has a size problem, and the client's plan to "double loyalty" is not supported. FACT: brand E shows 58% excess frequency and low sharing. INTERPRETATION: E is probably sold in a limited area or to one type of bakery; verify its distribution. FACT: sharing follows size. INTERPRETATION: C's main competitor for bakeries' orders is A, simply because A is the largest. If C reached 30% penetration, the expected frequency would be 3.025 / 0.70 = 4.3.

## Common mistakes
- Comparing a small brand's loyalty with the leader's and calling it a weakness.
- Reading excess loyalty as proof of a strong brand instead of checking distribution.
- Using different time periods or customer universes for different brands. Building the table from the client's customer list only.
- Declaring a "closest competitor" from one cell based on a few buyers.
- Setting loyalty targets without reference to planned penetration.

## Quality checklist
- Is the category and the customer universe defined once for all brands? (yes/no)
- Are brands sorted by penetration in every table? (yes/no)
- Is the w0 calculation shown (any excluded brand named), with deviations in percent and the base size of each brand? (yes/no)
- Is the duplication table complete, with column averages and expected values? (yes/no)
- Were distribution and temporary causes checked before interpreting a deviation? (yes/no)
- Are formulas that are working rules marked as such? (yes/no)

## Output template
```
DOUBLE JEOPARDY AND DUPLICATION BENCHMARKS (S4-18)
Decision this serves:                    Category and customer universe:
Data source (panel / records / survey), n, period:
Category type: repertoire / subscription       Loyalty measure used:

Double Jeopardy table (sorted by penetration)
| Brand | Buyers (n) | Penetration | Loyalty measure | Expected | Deviation % | Normal / excess / deficit |
w0 =            Brands excluded from w0 and why:

Duplication table (% of row brand's buyers who also bought column brand)
| Buyers of | Penetration | Brand 1 | Brand 2 | ... |
Column average:            D coefficient:            Expected per column:
Partitions found (brands, size of excess, likely reason):

Findings, each marked FACT or INTERPRETATION:
Implication for targets and for competitor definition:
Limits and next research step:
```

## Works with
- S1-08 surveys and S1-22 brand health tracking: collect brand buying per respondent.
- S4-10 crosstabs and tests: build the cross-buying counts and check group differences.
- S0-05 growth decomposition: splits growth into more buyers versus more per buyer.
- S6-03 growth through penetration: the strategy that follows from these benchmarks.
- S4-17 perceptual mapping and S4-19 mental availability metrics: the same "expected for its size" logic for image and memory data. S4-22 share of voice: reach planning once the growth route is set.

## Notes for Uzbekistan
- Panel data are rarely available to a small agency; a survey question on brands bought in a recent period is the practical substitute. Say that recall is imperfect and tends to favour well-known brands.
- Ask the buying question with local brand names and pack pictures, in Uzbek and Russian. Polite answer habits can add brands that were not really bought; keep the period short and the list complete.
- Compute the tables separately for Tashkent and the regions: a brand sold in only one region will look like an excess-loyalty brand in pooled data.
- Telegram-bot samples miss older and rural buyers. The laws were established mainly on Western panel data, with some emerging-market replications; treat a clear local deviation as a question to investigate, not as an error or as a discovery.

## Sources
- Original: Ehrenberg, A. S. C., Goodhardt, G. J., & Barwise, T. P. (1990). Double jeopardy revisited. Journal of Marketing, 54(3), 82-91. Paid. Not opened.
- Sharp, B. (2010). How Brands Grow. Oxford University Press. Paid book. Not opened.
- Opened: Romaniuk, J., Dawes, J., & Faghidno, S. (2021). The Double Jeopardy Law in B2B shows the way to grow. Ehrenberg-Bass Institute. https://marketingscience.info/news-and-insights/the-double-jeopardy-law-in-b2b-shows-the-way-to-grow
- Opened: Dawes, J., Brands invariably share buyers with competitors in line with size. Marketing Week. https://marketingweek.com/duplication-purchase-law/
- Opened: Romaniuk, J., How do B2B brands compete, an application of the Duplication of Purchase Law. LinkedIn B2B Institute. https://business.linkedin.com/content/dam/lem/business/en/advertise/resources/b2b-institute/b2b-duplication-of-purchase.pdf
- Opened: Double Jeopardy, 50 years on (manuscript in the London South Bank University repository; authors not shown in the file). Source of the w(1-b) steps, the 10% deviation and the fit criteria. https://openresearch.lsbu.ac.uk/download/08387f082771262a1dbbd7b4de6429f49d80d28f4f39ee1795230898531e1cd8/407668/DJ%2050%20Years%20on.docx
- Opened (abstract): Dawes, J. (2017). Using duplication of purchase analysis to reveal brand sub-markets. SSRN. https://papers.ssrn.com/abstract=3044190 Also opened (abstract): Anesbury, Z., Bennett, D., & Kennedy, R. (2021). How persistent are duplication of purchase partitions. Journal of Consumer Behaviour. https://openresearch.lsbu.ac.uk/item/8vw73
