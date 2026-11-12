---
name: s4-19-mental-availability-metrics
description: Computes mental market share, mental penetration, network size and share of mind from Category Entry Point survey data. Use to measure how easily buyers think of a brand.
---

# Mental availability metrics from Category Entry Point data (S4-19)
Mental availability is how likely a brand is to come to mind in buying situations. Jenni Romaniuk of the Ehrenberg-Bass Institute proposed measuring it through Category Entry Points (CEPs), the situations, needs and occasions that lead a buyer into a category, and counting how many buyers link each brand to each CEP. Four numbers summarise the result: mental market share, mental penetration, network size and share of mind. The approach is set out in her 2013 Journal of Business Research article "Modeling mental market share", in the book Better Brand Health (2023), and in an open report for the LinkedIn B2B Institute (2022). Evidence grade: A, tested in peer-reviewed research. The calculations are simple and well defined, and the open report links CEP counts to switching intentions in business insurance. Still, these are survey measures of memory, not of sales; that report was published by a company with a commercial interest in brand advertising. Use the metrics to diagnose and track, and do not present them as a sales forecast.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (computed from the data) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- A survey of category buyers has linked a list of brands to a list of CEPs, and the team wants a brand health reading or a baseline before a campaign.
- The same survey will be repeated, so changes can be tracked.
Do not use it when:
- The CEP list has not been researched (do S1-21 first) or consists of brand slogans and product claims instead of buyer situations.
- Only the client's customers were surveyed, or only the client's brand was shown.
- The sample is small. Working rule: below about 100 category buyers, report the four numbers as rough indications. The published examples use 311 to 609 respondents.

## What you need before starting (inputs)
- A CEP list. Romaniuk generates candidates with question prompts: when, where, while, with what, why, how feeling, with or for whom.
- A brand list covering big and small brands in the category, including the client.
- A survey of category buyers in which each CEP is shown with the brand list and a "none" option, and respondents pick every brand they link to it (pick-any, prompted). A typical stem is "Looking for a brand that..." followed by the CEP.
- A respondent-level file: one row per respondent, one 1/0 column per brand-CEP pair, plus columns for which brands the respondent buys.
- If available, each brand's sales share or penetration from another source.

## Procedure
1. Check the design. The study should be built for the whole category, not around one brand; include small as well as large competitors; and be repeatable in exactly the same form. If the brand list or CEP list will change between waves, the numbers will not be comparable.
2. Count links. A link is one respondent picking one brand for one CEP. For each brand add up its 1/0 columns: brand links `=SUM(range of that brand's columns)`. Add all brands to get total links.
3. Mental market share (MMS) = brand links / total links for all brands. It is the brand's share of all brand-CEP links in the category. In Romaniuk's open report: 3,732 / 37,948 = 9.8% for one bank.
4. Mental penetration (MPen) = respondents who link the brand to at least one CEP / all respondents. Add a helper column per brand with the row sum of its CEP columns, then `=COUNTIF(helper column,">0")/COUNT(helper column)`. It shows how many buyers can retrieve the brand at all. In the report: 472 / 609, about 78%.
5. Network size (NS) = brand links / respondents with at least one link to the brand. It is the average number of CEPs the brand is linked to among people who link it to anything. In the report: about 7.9.
6. Share of mind (SoM): among the respondents who link the brand to at least one CEP, the brand's links divided by all links those same respondents gave to any brand. In Sheets, filter to rows where the brand's helper column is above 0, then divide the brand's link total by the total of all link columns. This definition comes from a research supplier's guide to Romaniuk's method and from her interview comments; it was not checked in the book, so label it as such.
7. Check the arithmetic. Brand links = MPen x sample size x NS. So mental market share moves only if mental penetration or network size moves relative to other brands. Use this to explain a result: "small share because few people think of us" or "because those who do link us to few situations".
8. Read the four numbers together (Romaniuk's own reading, to be presented as INTERPRETATION):
   - MMS is the headline measure of relative mental availability.
   - MPen matters most for small brands and among non-buyers: the first task is that more people think of the brand at all.
   - NS shows breadth: in how many situations the brand can come to mind. It matters for brands of every size.
   - SoM shows how much competition the brand faces in the minds of those who know it; it matters most for big brands among their users, where early erosion can show.
9. Split buyers and non-buyers of the brand. Compute the metrics for each group. Brand users always give more links, so a pooled change can simply reflect a different mix of users in the sample.
10. Benchmark against size. Sort brands by sales share or penetration and place the metrics next to them. Expect bigger brands to lead on all four. Working rule of this skill (not from a source): if MMS is clearly above sales share, look for a physical availability or price barrier; if clearly below, the brand may be living on distribution and is exposed.
11. Find CEP strengths and weaknesses. Build the brand-by-CEP table of link counts. Expected = row total x column total / grand total. Deviation = (actual - expected) / sample size, in percentage points. Romaniuk's report treats within plus or minus 5 points as "as expected", more as a mental advantage, less as a mental disadvantage. Also note the size of each CEP (its column total): a big CEP where the brand is at a disadvantage is a priority; a CEP where many brands hold advantages is harder to win.
12. Turn it into direction. The report advises one CEP per advertising execution and a working list of about five to eight priority CEPs over time, and notes that links fade without refreshing. Hand the priority CEPs to S9-02.
13. State limits: prompted survey answers, sample source, date, and that a change between waves needs to be larger than sampling noise (test with S4-10). Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand (C) surveyed 500 juice buyers with eight CEPs (for example "something for the children's lunch box", "when guests come") and five brands.

| Brand | Links | MMS | Respondents with at least one link | MPen | NS |
|---|---|---|---|---|---|
| A | 2400 | 40.0% | 450 | 90% | 5.3 |
| B | 1500 | 25.0% | 400 | 80% | 3.8 |
| C (client) | 900 | 15.0% | 300 | 60% | 3.0 |
| D | 700 | 11.7% | 350 | 70% | 2.0 |
| E | 500 | 8.3% | 250 | 50% | 2.0 |
| Total | 6000 | 100% | | | |

Share of mind for C: the 300 respondents who link C gave 4,200 links to all brands; 900 / 4,200 = 21% (FACT).

Output: FACT: C has 15% mental market share, third of five; fewer people link it than D (60% against 70%), but those who do link it to more situations (3.0 against 2.0). INTERPRETATION: C's first gap is mental penetration; 40% of category buyers do not connect it with any juice occasion, so broad-reach communication comes before adding new messages. FACT: C's deviation on "when guests come" is +7 points and on "children's lunch box" -6 points, and the lunch-box CEP has the largest column total. INTERPRETATION: lunch box is a priority CEP for the next campaign; "guests" is an existing strength to keep refreshed.

## Common mistakes
- Using a CEP list made of image attributes ("high quality", "modern") instead of buying situations.
- Surveying brand customers only, or showing only some of the competing brands.
- Reporting mental market share without mental penetration and network size.
- Comparing waves with different brand or CEP lists. Pooling buyers and non-buyers and reading the change as a campaign effect.
- Reading raw CEP counts without expected values, so that the biggest brand "wins" every CEP.
- Presenting the metrics as a prediction of sales.

## Quality checklist
- Does the CEP list come from buyer research and describe situations, not claims? (yes/no)
- Are all main brands, large and small, in the survey? (yes/no)
- Is the sample made of category buyers, with n and source stated? (yes/no)
- Are total links, MMS, MPen and NS shown for every brand? (yes/no)
- Does brand links equal MPen x n x NS for each brand? (yes/no)
- Are buyers and non-buyers reported separately? (yes/no)
- Is the brand-by-CEP deviation table included, with CEP sizes? (yes/no)
- Is the share of mind definition marked as taken from secondary sources? (yes/no)

## Output template
```
MENTAL AVAILABILITY METRICS (S4-19)
Decision this serves:                    Category:
Who answered (n category buyers, dates, how recruited):
CEPs tested (number and source):         Brands shown:

| Brand | Size (sales share or penetration) | Links | MMS | MPen | NS | SoM |

Client brand, buyers versus non-buyers:
| Group | n | MPen | NS | SoM |

Brand-by-CEP deviations for the client (percentage points; band for "as expected"):
| CEP | CEP size (all links) | Actual | Expected | Deviation | Advantage / as expected / disadvantage |

Findings, each marked FACT or INTERPRETATION:
Priority CEPs to build and to refresh:
Limits and next measurement date:
```

## Works with
- S1-21 Category Entry Point research: produces the CEP list this method needs.
- S1-08 surveys and S3-01 questionnaire design: field the pick-any questions; S3-07 response styles: check for respondents who tick every brand.
- S1-22 brand health tracking: repeat the metrics in each wave.
- S4-10 crosstabs and tests: test changes and group differences. S4-17 perceptual mapping and S4-18 Double Jeopardy benchmarks: the same "expected for its size" reading.
- S4-22 share of voice and S6-03 growth through penetration: reach planning when mental penetration is the gap.
- S6-04 distinctive brand assets and S9-02 message strategy from Category Entry Points: receive the priority CEPs.

## Notes for Uzbekistan
- Write each CEP in everyday Uzbek and Russian, in the words buyers used in interviews, and keep the original wording in the report.
- Show brand names and logos as seen locally, including both scripts where a brand uses them.
- Agreeing answer habits can lead to ticking most brands for most CEPs; always offer "none of these", and report how many respondents ticked nearly everything.
- A Telegram-bot survey handles pick-any questions well with buttons, but its sample misses older and rural buyers. Report Tashkent and regions separately where numbers allow.
- The evidence for these metrics comes mainly from Western consumer and business markets. Treat the link between the metrics and sales here as a hypothesis until local tracking supports it.

## Sources
- Original: Romaniuk, J. (2013). Modeling mental market share. Journal of Business Research. Paid. Not opened; volume and pages not verified.
- Romaniuk, J. (2023). Better Brand Health. Oxford University Press. Paid book. Not opened.
- Opened: Romaniuk, J. (2022). Category Entry Points in a B2B World. LinkedIn B2B Institute (open report; source of the formulas, the worked numbers and the 5-point band). https://business.linkedin.com/content/dam/lem/business/en/advertise/resources/b2b-institute/b2bi-cepinb2b-final.pdf
- Opened: Ehrenberg-Bass Institute, Linking brand messages to buying situations wins the mind and the market. https://marketingscience.info/news-and-insights/ehrenberg-bass-linking-brand-messages-to-buying-situations-wins-the-mind-and-the-market
- Opened: Bigeye, Better Brand Health with Jenni Romaniuk, part 2 (interview; her reading of the four metrics). https://www.bigeyeagency.com/insights/better-brand-health-with-jenni-romaniuk-part-2
- Opened: quantilope, Better Brand Health Tracking white paper (research supplier's guide; source of the share of mind formula and the buyer and non-buyer split). https://www.quantilope.com/hubfs/Q%20-%20Marketing%20internal/Assets/White%20Papers/Better%20Brand%20Health%20Tracking.pdf
