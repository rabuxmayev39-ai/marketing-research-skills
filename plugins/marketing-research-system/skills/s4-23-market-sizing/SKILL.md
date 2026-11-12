---
name: s4-23-market-sizing
description: Estimates market size top-down and bottom-up, splits it into TAM, SAM and SOM, and reports a range with stated assumptions. Use when a client asks how big a market is.
---

# Market sizing: top-down, bottom-up, TAM / SAM / SOM (S4-23)

Market sizing estimates how many buyers a product or service could have and how much they would spend in a year. It has no single author; it is a practitioner standard taught in business schools, university guides and investor handbooks. Two routes are used. Top-down starts from a large published figure (population, industry output) and narrows it with percentages. Bottom-up starts from a unit that can be counted (customers, outlets) and multiplies by purchases and price. The result is usually shown as three nested figures: total addressable market (TAM), serviceable available market (SAM) and serviceable obtainable market (SOM). When data are thin, Fermi estimation, named after the physicist Enrico Fermi, is used: break the unknown into parts that can be guessed within bounds. Evidence grade: C. This is a practitioner tool with little formal testing of its accuracy, and definitions differ between guides. So every output is an estimate built on assumptions: report a range, show the arithmetic, and never present one number as a fact.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (taken from a named source) or INTERPRETATION (assumption or inference).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- A client is deciding whether to enter a category, region or segment and asks if it is worth it.
- A sales or share target needs a reality check against the size of the market.
- Market share has to be estimated because nobody publishes it (as input for S4-22).
Do not use it when:
- The client needs a sales forecast for next quarter. Sizing shows potential, not timing.
- The product creates a new behaviour with no existing spending to measure, and the team will not accept wide ranges.
- The decision does not depend on size (for example choosing a message).
- There is only time to copy one figure from a paid report without knowing its definition. Say what the figure includes or do not use it.

## What you need before starting (inputs)
- The decision the estimate serves and the precision it needs (order of magnitude, or within about 30%).
- Product or service definition, what counts as a substitute, and the target customer: households or businesses, and which ones.
- Geography, year (annual figures by default) and unit of measure: money, physical volume, or number of customers.
- Client facts: price, average order, purchase frequency, current sales, delivery reach, capacity.
- Available sources: official statistics, industry bodies, client CRM, earlier research.

## Procedure
1. Write the question precisely. "How many [customers] in [geography] buy [product] per year, and for how much?" Ask the user to confirm product, customer, geography, year and unit. A vague definition is the main source of wrong sizes.
2. State the definitions you will use, because guides differ. In this skill: TAM = all yearly demand for the product type in the chosen geography, with no competition considered. SAM = the part of TAM the client can serve with its current product, price level, channels and delivery area. SOM = the part of SAM the client can realistically win in a stated period given competitors and capacity.
3. Build a top-down estimate. Start from the broadest reliable figure (population, number of households, number of registered businesses, industry output). Apply filters one at a time: share in the geography, share who are in the target group, share who buy the category, purchases per year, average price. Give each filter a source or mark it ASSUMPTION. University guides warn that this route is quick but tends to come out too optimistic.
4. Build a bottom-up estimate independently. Core formula: market size = number of customers x average yearly spend per customer, where yearly spend = purchases per year x price. Split into segments only where spend differs a lot. Count customers from lists, registers, maps, field counts in sample areas, or client data scaled up. Make sure everything is annual: if a product is bought once in five years, divide by five.
5. Use Fermi steps for any missing input. Break it into parts you can reason about; set a lower and an upper bound that you are fairly sure of; take the geometric mean (square root of lower x upper) as the central value; keep one or two significant figures. Label it ASSUMPTION and plan how to verify it.
6. Triangulate. Compare the two totals for the same definition (usually TAM). Working rule of this skill: if the larger is less than 1.5 times the smaller, report the two as the range; if between 1.5 and 3 times, find the assumption that causes the gap and fix it; if more than 3 times, the definitions do not match or one input is wrong, so do not report until resolved. Add a third check where possible (supply side: production plus imports minus exports; or leading competitors' revenue divided by their believed share).
7. Derive SAM. Apply the client's real limits to the bottom-up figure: delivery radius, price tier, channel, product fit. Each limit is a line with its own number and source.
8. Derive SOM. Do not write "we take 5%". Build it from capacity, sales force coverage, number of points of sale reachable, and what comparable competitors achieved. Then check the implied share of SAM for sense. One investor guide notes that technology companies at stock-market listing typically hold about 0.1% to 2% of their addressable market, far below the 10% often claimed; treat a high share as a claim that needs evidence.
9. Run a sensitivity check. Take the two or three assumptions with the weakest basis, move each to its low and high value, and show how the result changes. The one that moves the result most is the first thing to research (S1-03, S1-08).
10. Sanity-check. Compare with something known: the client's own sales (does SOM imply an absurd share?), spend per person per year (is it plausible against income?), a neighbouring category. If it looks wrong, check units, then arithmetic, then reasoning.
11. Report with the output template: ranges, assumption table, both calculations line by line, and what would change the answer. Return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. Every number below is made up; none describes a real market.
Input: a flour mill wants to know the yearly demand for flour from small bread bakers in "Region X" and how much it could win in three years.

Top-down (TAM, tonnes of flour per year):
- Population 3.0 million (would be FACT from statistics; invented here) x bread eaten per person per day 0.3 kg (ASSUMPTION) = 900 t per day.
- Share bought from small bakers 60% (ASSUMPTION) = 540 t; flour per kg of bread 0.75 kg (ASSUMPTION) = 405 t per day x 365 = about 148,000 t.
Bottom-up (TAM):
- Bakers counted in 5 sample districts and scaled up: about 2,500 (ASSUMPTION based on field count).
- Flour used per baker: 3 bags of 50 kg per day, 330 working days = 49.5 t per year. Total = about 124,000 t.
Triangulation: 148,000 / 124,000 = 1.2. Report TAM as 120,000 to 150,000 t.
SAM: districts within delivery reach hold 40% of bakers; 70% of them use the grade the mill makes. SAM = 34,000 to 42,000 t.
SOM (3 years): two sales agents can each serve 60 bakers = 120 bakers x 49.5 t = about 6,000 t, which is 14% to 18% of SAM. INTERPRETATION: high for a newcomer; a cautious case of 80 bakers gives about 4,000 t. Report SOM as 4,000 to 6,000 t.
Sensitivity: flour per baker (2 to 4 bags) moves the bottom-up TAM by one third in each direction. First research task: measure daily flour use in 30 bakeries.

## Common mistakes
- Reporting one precise number with no range, or top-down only, ending with "if we get just 1%".
- Using a national or global figure for a business that serves one city.
- Mixing units or periods (volume with value, monthly with yearly, retail price with factory price), or counting people when the buyer is a household or a business.
- Counting total transaction value when the client earns only a fee or margin on it.
- Hiding assumptions inside the arithmetic so nobody can challenge them.
- Stretching the category definition until the market looks large, or treating SOM as a forecast or a promise.

## Quality checklist
- Are product, customer, geography, year and unit written down and confirmed by the user? (yes/no)
- Are both a top-down and a bottom-up estimate shown, each line by line? (yes/no)
- Does every input carry a source or the label ASSUMPTION? (yes/no)
- Do the two estimates agree within the working rule, or is the gap explained? (yes/no)
- Are TAM, SAM and SOM defined in the report and given as ranges? (yes/no)
- Is SOM built from capacity and reach, not from a round percentage? (yes/no)
- Was a sensitivity check done, the most influential assumption named, and the result compared with a known figure? (yes/no)

## Output template
```
MARKET SIZING (S4-23)
Decision served:                          Precision needed:
Product / service:                        Customer unit (person / household / business):
Geography:            Year:               Unit (money / volume / customers):
Definitions used    TAM:          SAM:          SOM (period):
Top-down
| Step | Input | Value | Source or ASSUMPTION | Running total |
Bottom-up
| Segment | Customers | Purchases per year | Price | Yearly total | Source or ASSUMPTION |
Triangulation
Top-down total:        Bottom-up total:        Ratio:        Third check:
Explanation of gap:
Result (ranges)
TAM: __ to __      SAM: __ to __      SOM: __ to __ (implied share of SAM: __%)
Assumption register
| # | Assumption | Low | Central | High | Basis | How to verify |
Sensitivity (result when each weak assumption moves low / high):
Sanity checks done:
FACT statements:
INTERPRETATION statements:
What would change this answer:
Next research step:
```

## Works with
- S1-03 desk research: finding and judging the published figures used as inputs.
- S8-07 stat.uz open data, S8-06 World Bank L2CU survey, S8-05 Central Bank consumer sentiment review, S8-04 DataReportal Digital Uzbekistan: candidate sources for population, household, spending and digital audience inputs. Check each figure's definition and year.
- S1-08 surveys and S4-10 crosstabs and tests: measuring incidence, frequency and spend, overall and by segment, when no source exists.
- S0-05 growth decomposition and S0-10 five forces: turn the size into sources of growth and explain why SOM is far below SAM.
- S4-22 share of voice and S7-01 KPI hierarchy: use the market shares that sizing produces and turn SOM into targets.

## Notes for Uzbekistan
- The team works in Uzbek and Russian. Record source names and category terms in the original language so the figure can be found again.
- Size Tashkent and the regions separately when prices, formats or delivery reach differ, then add them up. Do not scale a Tashkent figure to the country by population.
- Decide with the client whether informal and bazaar sales are inside the definition; registers and official output figures may not cover them, so a bottom-up field count is often the stronger route.
- Incidence and spend taken from a Telegram-bot survey miss older and rural people. Do not project such figures onto the whole population without saying so and widening the range.
- Stated purchase frequency and spend can be inflated by polite or agreeing answers; prefer receipts, shop counts and sales records. Ratios borrowed from other countries (share of income spent, purchase frequency) are hypotheses here. Mark them ASSUMPTION and verify locally. This skill states no facts about Uzbek consumers.

## Sources
- Original: no single original source; practitioner standard. Fermi estimation is named after Enrico Fermi.
- Opened: Pear VC. Market Sizing Guide (investor guide; source of the customers x yearly revenue formula and the share-at-listing range). https://pear.vc/market-sizing-guide/
- Opened: University of Waterloo, WatSolve Consulting Group. Market Sizing + Analysis. https://uwaterloo.ca/science-and-business/watsolve-consulting-group/market-sizing-analysis
- Opened: Armstrong, S. (2023). Market Sizing. In Business Information Skills Certificate (BISC) Research Guide, open textbook, CC BY 4.0. https://pressbooks.atlanticoer-relatlantique.ca/businessinforesearchguide/chapter/__unknown__-20/
- Opened: OpenStax. University Physics Volume 1, section 1.5 Estimates and Fermi Calculations (open textbook; source of the bounds and geometric mean steps). https://openstax.org/books/university-physics-volume-1/pages/1-5-estimates-and-fermi-calculations
- Opened: U.S. Small Business Administration. Market research and competitive analysis. https://www.sba.gov/business-guide/plan-your-business/market-research-competitive-analysis
- Not opened: HBS Online and a16z pages on market sizing (the HBS Online page failed to load; no a16z guide was found), so nothing from them is used.
