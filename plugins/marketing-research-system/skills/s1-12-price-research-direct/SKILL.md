---
name: s1-12-price-research-direct
description: Decides whether direct price questions fit, then runs Van Westendorp or Gabor-Granger to get a quick acceptable price range. Use for a first price check before a tougher test.
---

# Price research, Van Westendorp and Gabor-Granger (S1-12)
Two survey techniques ask people about price directly. The Price Sensitivity Meter (PSM) of Peter van Westendorp (1976) asks four open questions about the prices at which a product seems too cheap, a bargain, getting expensive and too expensive, and reads an acceptable range from where the answer curves cross. The Gabor-Granger technique, from the work of André Gabor and Clive Granger in the 1960s, asks whether the respondent would buy at each of several set prices and builds a demand and revenue curve. Evidence grade: B, an established professional standard. Both are widely used and documented, but stated prices are not purchases. A meta-analysis by Schmidt and Bijmolt (2020) of 115 effect sizes from 77 studies found that hypothetical willingness to pay exceeded real willingness to pay by 21% on average, more for expensive and specialty goods. Use the output as a starting range and confirm it with conjoint (S1-10) or, better, a live price test (S1-09).

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (counts and curve readings, with sample) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- A first price range is needed quickly and cheaply, for a product people can understand from a description and compare with things they already buy. Van Westendorp: the team has no firm price idea and wants the range buyers find plausible.
- Gabor-Granger: the team has a few candidate prices and wants to see how stated demand and revenue change across them.
Do not use it when:
- The product is so new that people have no reference price; both techniques depend on one.
- The price must be judged against competitors or traded against features. Both look at one product alone; use S1-10.
- It is a luxury or status good where a low price lowers appeal in ways these questions do not capture, or a product where "too cheap" has no meaning.
- Real prices can be tested on real buyers (then run S1-09 or S7-02 instead), or the result would be used as a sales forecast.

## What you need before starting (inputs)
- A neutral description of the product, pack and conditions (with picture), the same for everyone.
- Competitor and substitute prices, and unit cost, to set a plausible ladder and to read the result.
- A sample of people who buy the category (S2-02). Vendor guidance for Gabor-Granger suggests at least 100 per group reported; this skill's working rule for both techniques is 200 or more.
- A survey tool: open numeric fields for PSM; a branching price ladder for Gabor-Granger.

## Procedure
1. Check fit. Ask the user: what will be decided, do buyers know this kind of product, are there candidate prices, and can a live test follow? Choose PSM when the range is unknown, Gabor-Granger when candidate prices exist, or both in one survey (PSM first, so set prices do not anchor the open answers; working rule).
2. Write the product description. Factual, no selling language; overselling inflates stated prices. Pretest it (S3-02).
3. PSM questions. After the description ask, with open numeric answers, at what price the product would be: (a) so cheap that you would doubt its quality; (b) a bargain, a good buy for the money; (c) getting expensive, but you would still consider it; (d) too expensive to consider. Sources disagree on the best order; keep one order for everyone and record it.
4. PSM cleaning. Keep respondents whose answers satisfy too cheap <= bargain <= getting expensive <= too expensive; remove the rest and report how many.
5. PSM curves. For a grid of prices compute four cumulative shares: "too cheap" and "bargain" as the share whose answer is at or above the price (falling curves); "expensive" and "too expensive" as the share whose answer is at or below the price (rising curves). Conventions differ between sources (some invert two curves), so state the one used.
6. PSM readings, under this convention:
   - Point of marginal cheapness (lower bound): too cheap crosses expensive. Point of marginal expensiveness (upper bound): too expensive crosses bargain.
   - Indifference price point: bargain crosses expensive. Optimal price point: too cheap crosses too expensive. The name oversells it; it is where price resistance is lowest, not where revenue or profit is highest.
   Report the range between the bounds as the main result. Interpolate between grid points and round to a sensible price step.
7. Gabor-Granger ladder. Choose about five prices, evenly spaced, covering the range considered (from PSM, competitors and cost). Vendor guidance: fewer than five hides the bend in the curve; more than seven or eight tires respondents.
8. Gabor-Granger questions. Show one price per screen and ask purchase intent. Two documented forms: start at a random price and move up after a positive answer, down after a negative one; or start low and move up until the first no. Count as positive only the top answers (definitely or probably would buy) on a five-point scale, or a plain yes. Record each respondent's highest accepted price; those who refuse the lowest price are recorded as buying at none.
9. Gabor-Granger curves. For each price: share willing to buy = share whose highest accepted price is at or above it. Revenue index = price x share. If unit cost is known, profit index = (price - unit cost) x share. Report where each peaks; they often differ.
10. Check groups (S4-10): heavy and light buyers, cities, channels. Read only groups with enough respondents.
11. Adjust and state limits. The curves show stated, not real, demand. Schmidt and Bijmolt's average gap of 21% is a reference point, not a correction factor to apply mechanically; they also found indirect methods such as conjoint were not automatically closer to real prices. So treat the upper bound with most caution, and recommend a live test at two or three prices inside the range.
12. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand plans a one-litre cold-pressed juice. 200 Tashkent juice buyers recruited through a Telegram bot answered both blocks (200 left after cleaning). Prices in som.
PSM cumulative shares:

| Price | Too cheap | Bargain | Expensive | Too expensive |
|---|---|---|---|---|
| 10,000 | 35% | 80% | 10% | 2% |
| 12,000 | 15% | 55% | 30% | 8% |
| 14,000 | 5% | 30% | 55% | 20% |
| 16,000 | 2% | 12% | 78% | 45% |

Readings by straight-line interpolation: lower bound (too cheap = expensive) at 11,250, where both are 22.5%; optimal point (too cheap = too expensive) at about 12,600; indifference point (bargain = expensive) at 13,000, both 42.5%; upper bound (too expensive = bargain) at about 14,500, both near 26%. Acceptable range: about 11,300 to 14,500.
Gabor-Granger, unit cost 8,000:

| Price | Would buy | Revenue index (price x share x 100 people) | Profit index ((price - 8,000) x share x 100) |
|---|---|---|---|
| 10,000 | 70% | 700,000 | 140,000 |
| 12,000 | 62% | 744,000 | 248,000 |
| 14,000 | 40% | 560,000 | 240,000 |
| 16,000 | 22% | 352,000 | 176,000 |
| 18,000 | 10% | 180,000 | 100,000 |

FACT: stated revenue peaks at 12,000; stated profit is nearly equal at 12,000 and 14,000; both lie inside the PSM range. INTERPRETATION: test 12,000 against 14,000 in shops; expect real demand at 14,000 to be below the stated 40%. Limit: one product shown alone, a Telegram-recruited Tashkent sample, stated intent.

## Common mistakes
- Presenting the "optimal price point" as the price to charge, or the curves as a sales forecast.
- Asking people who do not buy the category, or about a product they cannot picture.
- Keeping inconsistent PSM answers; plotting without saying which curve convention was used.
- A Gabor-Granger ladder that is too narrow or unevenly spaced, so the peak sits at the edge; reporting the revenue peak and forgetting cost; skipping the confirmation step.

## Quality checklist
- Do respondents buy the category and was the description neutral and pretested? (yes/no)
- Were inconsistent PSM answers removed and counted? (yes/no)
- Is the curve convention stated and are all four crossing points reported? (yes/no)
- Does the Gabor-Granger ladder have about five evenly spaced prices that bracket the peak? (yes/no)
- Are revenue and, where cost is known, profit indices both shown? (yes/no)
- Is the result described as stated willingness to pay, with the overstatement risk named? (yes/no)
- Is a live test or conjoint proposed to confirm? (yes/no)

## Output template
```
DIRECT PRICE RESEARCH (S1-12)
Decision this serves:                    Decision owner:
Product description shown:               Reference prices (competitors, substitutes), unit cost:
Technique(s) and order:                  Question wording and languages:
Sample: who, source, n before / after cleaning, dates
PSM (curve convention used:            )  Lower bound (PMC):      Optimal point (OPP):      Indifference point (IPP):      Upper bound (PME):
Acceptable range:
Gabor-Granger: | Price | Would buy % | Revenue index | Profit index |    Revenue peak at:        Profit peak at:
Group differences:                                             (FACT)
Recommended price range and prices to test live:               (INTERPRETATION)
Limits (stated prices, one product alone, sample):
Confirmation step (S1-09 / S1-10 / S7-02):      Next step:
```

## Works with
- S1-08 surveys: these questions sit inside a survey. S2-02, S2-03: sample. S3-01, S3-02: wording and pretest.
- S1-10 conjoint: price against features and competitors. S1-09 experiments and S7-02 controlled tests: live confirmation.
- S6-13 value-based pricing: the strategy step that uses the range. S4-10: group comparisons. S4-08 say-do analysis: compare stated with real prices paid.
- S1-11 MaxDiff and S4-16 Kano: which features justify a price at all. S1-23: prefer behaviour over stated answers.

## Notes for Uzbekistan
- Ask prices in som, in the unit buyers use (per litre, per pack, per month), and state whether delivery or installation is included. Translate the four PSM questions into Uzbek and Russian and pretest both; "bargain" and "getting expensive" are hard to render.
- Polite answer habits may raise stated intent in Gabor-Granger, more with an interviewer present. Count only firm positive answers.
- Where the final price is negotiated, say whether the question is about a shelf price or a starting price. Read Tashkent and regions separately. Telegram-bot samples miss older and rural buyers.
- When prices in the category are moving, record the fieldwork dates and treat the range as short-lived.
- The techniques and the 21% figure come from Western studies. Treat the size of the overstatement here as unknown.

## Sources
- Original: Van Westendorp, P. H. (1976). NSS Price Sensitivity Meter (PSM), a new approach to study consumer perception of price. Proceedings of the ESOMAR Congress. Not opened.
- Original: Gabor, A., & Granger, C. W. J. (1966). Price as an indicator of quality, report on an enquiry. Economica, 33(129), 43-70. Paid. Not opened.
- Opened (abstract): Schmidt, J., & Bijmolt, T. H. A. (2020). Accurately measuring willingness to pay for consumer goods, a meta-analysis of the hypothetical bias. Journal of the Academy of Marketing Science, 48(3), 499-518. https://www.marketingcenter.de/en/publication/151167
- Opened: Penn State University, BA 850, Van Westendorp meter (questions, cleaning, plotting, limits). https://courses.ems.psu.edu/ba850/book/export/html/733
- Opened: Conjointly, Van Westendorp Price Sensitivity Meter (question wording, crossing points). Vendor page. https://conjointly.com/products/van-westendorp/
- Opened: Wikipedia, Van Westendorp's Price Sensitivity Meter (original citation, crossing points) https://en.wikipedia.org/wiki/Van_Westendorp%27s_Price_Sensitivity_Meter and Gabor-Granger method (random-start ladder, top-two answers) https://en.wikipedia.org/wiki/Gabor%E2%80%93Granger_method
- Opened: SurveyMonkey, The Gabor-Granger method (ladder, demand and revenue index, 100 per segment). Vendor page. https://www.surveymonkey.com/learn/product-development/gabor-granger/
