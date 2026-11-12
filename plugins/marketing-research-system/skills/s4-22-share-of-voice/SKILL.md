---
name: s4-22-share-of-voice
description: Compares each brand's share of voice with its share of market and computes excess share of voice. Use for competitor analysis and budget checks, also when spend data are unpublished.
---

# Share of voice versus share of market and ESOV (S4-22)

Share of voice (SOV) is a brand's share of all advertising in its category; share of market (SOM) is its share of category sales. Excess share of voice (ESOV) is SOV minus SOM. John Philip Jones set out the comparison in Harvard Business Review in 1990, defining SOV as a brand's share of the total value of main media exposure in the category. Les Binet and Peter Field (IPA) and a Nielsen analysis with the IPA (2009) then showed across many brands that, other things equal, brands with SOV above SOM tend to gain share and brands below tend to lose it. The method is used to read competitors' intentions, to judge whether a growth target fits the budget, and to hand a number to budget setting. Evidence grade: A. The pattern has been found repeatedly in large data sets. Two limits apply: the data are mostly UK and other Western markets and largely consumer goods, and the published rates are averages with wide variation between brands. Treat the direction as well supported and any single rate as a planning assumption.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (observed in data or in a cited source) or INTERPRETATION (your inference).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The team needs to know who is investing ahead of their size and who is coasting.
- A client sets a share target and the question is whether the planned budget is in the right range.
- A competitor has clearly raised or cut activity and the client asks how to respond.
Do not use it when:
- The category cannot be defined or has no advertising to speak of (sales driven by tenders, personal selling or distribution deals).
- No market share estimate exists at all. Do S4-23 or S1-03 first.
- The decision is about which message or channel to use (SOV measures quantity, not quality), or the brand is brand new with zero share: the gap is still informative, but published rates were not built for that case.

## What you need before starting (inputs)
- Category definition and the list of brands that compete for the same buyers (5 to 15 brands plus "others"); market share per brand, by value or volume, with source and year.
- Advertising spend or exposure per brand for the same period and geography, or the raw material to estimate it (step 4).
- The client's own spend by channel, and the client's share goal and time frame. Period: 12 months as default, so seasonality cancels out.

## Procedure
1. Fix the frame. Write down category, geography, period and which channels count as "voice". Use one frame for SOV and SOM. Ask the user: "Whom does a buyer consider next to you?" and build the brand list from that.
2. Get SOM. Use the best available source (audit data, client estimates, S4-23, S1-03). Record value or volume, and a range if the figure is rough.
3. Get SOV from measured data if it exists. Ask whether the client or its media agency buys advertising monitoring data. If yes, use spend at one consistent price basis for all brands. SOV = brand spend / total category spend x 100.
4. If spend is not published, estimate it. Published sources agree that this has become harder because much spend sits in closed digital platforms. The following is this skill's own working method, not a sourced standard:
   a. List the channels the category uses (TV, radio, outdoor, Instagram and Facebook, Telegram channels, search, bloggers, print, in-store). For each choose one countable unit: TV or radio spots, outdoor faces seen on fixed routes, active ads per brand in the public Meta Ad Library, paid posts in a fixed list of Telegram channels, sponsored blogger posts.
   b. Count units per brand over the same sample weeks, by the same rule, and record how the count was made.
   c. Convert units to money with one rate-card price per unit applied to all brands. Discounts are unknown, so the absolute sums will be wrong; the shares are what matter. Sum across channels to get estimated spend and SOV per brand. If conversion to money is not possible, compute share of units per channel and weight channels by the client's own budget split, stating that assumption.
   d. Produce a low and a high SOV per brand by varying the weakest assumption. Mark the whole result ESTIMATE.
5. Add share of search as a cross-check, not a substitute. Share of search = brand's searches / all brand searches in the category. Binet reported that in three categories it rose with SOV. An IPA summary warns it cannot replace SOV: it shows the result of earlier activity (a thermometer), while SOV is the lever. If estimated SOV and share of search disagree strongly, recheck the counts.
6. Compute ESOV = SOV - SOM for every brand, with ranges if SOV is estimated.
7. Plot and read. Put SOM on the horizontal axis and SOV on the vertical, with a diagonal where SOV = SOM. Above the line = investing ahead of size; below = underinvesting. Jones's pattern, confirmed by Christensen and Hansen (2005) on consumer goods, is that small brands tend to sit above the line and large brands below it, so a leader slightly below the line is normal, not a sign of weakness.
8. Apply a rate only as a planning range. Sourced averages: about 0.5 share points gained per year per 10 points of ESOV (Nielsen 2009, 123 brands, 30 consumer goods categories); about 0.6 for B2C and 0.7 for B2B in IPA data analysed by Binet and Field. Nielsen reported 1.4 for category leaders against 0.4 for challengers, and stronger results for launches and for better creative work. Working rule: show outcomes at 0.4, 0.5 and 0.7 and say which case the brand resembles.
9. Test the client's goal. Required ESOV = share goal per year / rate x 10. Required SOV = SOM + required ESOV. Required budget = required SOV x estimated category spend. If the result is far above what the client can spend, say so: either the goal, the time frame or the reliance on advertising must change.
10. State what else must hold. The rule assumes other factors equal: price, distribution, product quality and creative quality. List known differences. The IPA material shows creatively awarded and fame-building campaigns getting far more growth per point of ESOV, so a quantity gap can be partly closed by quality.
11. Report with the output template; pass the required SOV to S9-05. Return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand has 12% value share and wants 14% in two years. No monitoring data. The team counted for four weeks: TV spots on three channels, outdoor faces on six routes, Meta Ad Library active ads and paid posts in 20 Telegram channels, and applied one rate card.

| Brand | SOM | Estimated SOV (low-high) | ESOV |
|---|---|---|---|
| A (leader) | 30% | 26-30% | -4 to 0 |
| B | 25% | 30-36% | +5 to +11 |
| Client | 12% | 8-11% | -4 to -1 |
| Others | 33% | 28-31% | -5 to -2 |

Output:
- FACT (estimate): the client is below the line; brand B is the only brand clearly investing ahead of its size.
- Share of search over the same year: client 9%. It agrees with the low SOV estimate.
- Goal check: +1 point per year. At 0.5 per 10 points, required ESOV = +20, so required SOV = 32%. At 0.7, required ESOV = about +14, SOV = 26%. Estimated category spend is 40 billion soums, so the budget would be about 10 to 13 billion against a current 4 billion.
- INTERPRETATION: the goal is not reachable by media weight alone. Options: a longer time frame, a smaller sub-category or region where 26% SOV is affordable, or stronger creative work plus distribution gains. Brand B is likely to take share if nothing changes.

## Common mistakes
- Comparing SOV for one period or region with SOM for another, or presenting estimated SOV to one decimal place as if it were measured.
- Counting only the channels that are easy to see and silently ignoring the rest.
- Reading 0.5 per 10 points as a law. It is an average with wide spread, from consumer goods in Western markets, and challengers got much less per point than leaders in the Nielsen data.
- Using share of search or social mentions as if they were SOV.
- Forgetting "other things equal": a price rise or lost distribution can cancel a positive ESOV. Also defining the category so narrowly that the client looks dominant.

## Quality checklist
- Do SOV and SOM use the same category, geography and period, and is every figure marked measured or estimated, with its source or counting rule? (yes/no)
- Do estimated SOV figures carry a low-high range? (yes/no)
- Are all meaningful channels covered, or the missing ones named? (yes/no)
- Is the growth rate shown as a range with its source and its limits? (yes/no)
- Are non-advertising differences (price, distribution, creative quality) listed? (yes/no)
- Was the client's goal converted into required SOV and budget and compared with reality? (yes/no)

## Output template
```
SOV / SOM / ESOV ANALYSIS (S4-22)
Category:                 Geography:               Period:
Channels counted as voice:               Channels left out (why):
SOM source:               SOV source: measured / estimated (method below)
| Brand | SOM % | SOV % low | SOV % high | ESOV low | ESOV high | Share of search % | Position vs line |
Estimation method (if estimated)
| Channel | Unit counted | Weeks / sample | Price per unit used | Weakest assumption |
Reading
FACT:
INTERPRETATION (who is investing ahead, who is coasting, likely share movement):
Goal check
Share goal and time frame:
Rate assumed (points of share per 10 ESOV per year): low __ / mid __ / high __
Required ESOV:        Required SOV:        Estimated category spend:
Required budget range:            Current budget:
Verdict: goal fits budget / does not fit / fits only if ...
Other factors not equal (price, distribution, product, creative):
Limits of this analysis:
Hand over to S9-05:
```

## Works with
- S9-05 budget from share of voice: takes the required SOV and turns it into a budget proposal.
- S4-23 market sizing and S1-03 desk research: supply category size and market shares.
- S4-21 content analysis: the counting and coding rules for competitor advertising in step 4.
- S4-18 Double Jeopardy benchmarks and S4-19 mental availability metrics: check whether share and brand measures move as the ESOV reading predicts.
- S6-05 brand building and activation balance: how the voice is split matters as well as its size.
- S0-05 growth decomposition and S0-10 five forces: place the advertising gap among other causes of growth or decline.
- S1-22 brand health tracking, S7-01 KPI hierarchy and S8-04 DataReportal Digital Uzbekistan: track SOV, share of search and share as linked measures; background on channel use when choosing which channels to count.

## Notes for Uzbekistan
- The team works in Uzbek and Russian. Count advertising in both languages and in both Latin and Cyrillic script; search brand names in every spelling when computing share of search.
- Ask early whether any monitoring data can be bought; if not, plan field time for the counts in step 4 and say plainly that SOV is an estimate. Run Tashkent and the regions as separate frames when media, distribution or competitors differ. A national SOV can hide a regional gap.
- Telegram channels and bloggers may carry a large part of a category's activity and are not in any ad library. Fix the channel list in advance and count by one rule.
- The published rates come from Western, mostly consumer goods data. Here they are hypotheses. After a year, compare the client's own ESOV with its share change and start building a local rate. This skill makes no claims about Uzbek media prices or consumer behaviour; use actual rate cards.

## Sources
- Original: Jones, J. P. (1990). Ad Spending: Maintaining Market Share. Harvard Business Review, January-February 1990. Paid; full text not opened, only the publisher's product description. https://store.hbr.org/product/ad-spending-maintaining-market-share/90108
- Original: Binet, L., & Field, P. The Long and the Short of It. IPA. Paid report; not opened. Opened: IPA presentation of the report. https://ipa.co.uk/media/14463/long_and_short_of_it_presentation_final_030424.pdf
- Opened: Clarke, N. (2009). Budgeting for the Upturn - Does Share of Voice Matter? Nielsen. https://www.nielsen.com/insights/2009/budgeting-for-the-upturn-does-share-of-voice-matter
- Opened: LinkedIn B2B Institute. The B2B Marketer's Guide to the Share of Voice Rule (summary of Binet and Field's B2B analysis of IPA data; publisher sells advertising). https://business.linkedin.com/en-uk/marketing-solutions/blog/posts/B2B-Marketing/2020/The-B2B-Marketers-Guide-To-The-Share-of-Voice-Rule
- Opened: IPA EffWorks. How to capture an extra share of the recovery. https://ipa.co.uk/effworks/monitoring-marketing/how-to-capture-an-extra-share-of-the-recovery/
- Opened: Binet, L. Share of search as an advertising metric (slides). https://www.westwoodone.com/wp-content/uploads/2026/08/les-binet-part-2-share-of-search-as-an-advertising-metric-1.pdf
- Opened (abstract): Christensen, L. B., & Hansen, F. (2005). Share of voice/share of market and long-term advertising effects. International Journal of Advertising. https://www.warc.com/content/article/ija/share-of-voice-share-of-market-and-long-term-advertising-effects/en-gb/80566
- Opened: Ebiquity. How to calculate effective share of voice - is the JPJ curve still relevant today? https://ebiquity.com/news-insights/blog/is-jpj-curve-still-relevant-today
