---
name: s1-10-conjoint-discrete-choice
description: Decides whether conjoint or a discrete choice study fits, then plans attributes, design, sample and reading of utilities. Use when features and price must be traded off.
---

# Conjoint and discrete choice (S1-10)
In a conjoint study respondents see product profiles built from attributes (brand, material, warranty, price) and say which they prefer. From many such answers a model estimates a value, called a part-worth utility, for each level of each attribute, and a simulator predicts how people would choose among any set of products. Paul Green introduced the approach to marketing in the 1970s; Green and Srinivasan (1990) reviewed its development, including reliability, validity and choice simulators. Choice-based conjoint (CBC), where the respondent picks one profile from a small set, is now the most used form according to Sawtooth Software, the main specialist vendor. Evidence grade: A, tested in peer-reviewed research over decades. The grade applies to a well-designed study; results remain stated choices in a survey, so predicted shares are relative indications, not sales forecasts.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (model output, with sample) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The decision is which combination of features and price to offer, or how much a feature is worth relative to price.
- The product can be described by a short list of attributes, each with clear levels the firm can actually deliver.
- There is budget for a few hundred respondents, specialised software and someone able to run the model.
Do not use it when:
- The team cannot yet name the attributes buyers use. Do S1-04 or S1-07 first; Green, Krieger and Wind note that attributes come from interviews, groups and company knowledge.
- Only a ranking of single items is needed (messages, benefits). Use S1-11, which is simpler.
- Only a quick price range is needed. Use S1-12.
- The buyers are few (a handful of B2B accounts). Use S1-18 interviews.
- The product is so new that respondents cannot picture it, or the choice is driven by things that cannot be shown in a profile.

## What you need before starting (inputs)
- The decision and the realistic options the firm could launch, including cost limits per level.
- Qualitative evidence on what buyers compare, in their words.
- Competitor offers and prices to build realistic scenarios for the simulator.
- Software for design and estimation, a survey platform that can show choice tasks, and a sample source (S2-02).

## Procedure
1. Check fit. Ask the user: what will be decided, which attributes can really be changed, how many buyers can be surveyed, and what software and skills exist. If fewer than about 200 respondents are reachable or no software is available, recommend S1-11, S1-12 or S4-16 instead and explain what is lost.
2. Choose the type. Default to CBC. Sawtooth describes adaptive CBC for longer attribute lists (two to three times longer to answer) and menu-based conjoint for build-your-own offers (needs high statistical skill).
3. Write attributes and levels. Sawtooth's manual advises keeping full profiles to about 8 attributes, about 5 or fewer levels each, and a similar number of levels across attributes. Working rules of this skill: 4 to 6 attributes for a first study; levels must be concrete, mutually exclusive, deliverable and understood the same way by everyone; the price range should reach a little beyond the prices being considered.
4. Remember what the range does. Attribute importance depends on the levels chosen: a wide price range makes price look important. Sawtooth warns that importances can mislead for this reason. Fix ranges on business grounds and state them in the report.
5. Design the choice tasks with software, not by hand. Settings from Sawtooth's manual: about 3 to 6 profiles per task in marketing studies, 2 or 3 on mobile screens or for complex choices; 8 to 15 tasks with an interviewer or on paper, fewer online if the sample can be larger, and at least 6 for individual-level estimates. Aim for level balance (each level shown about equally often) and independence between attributes. Avoid prohibited combinations unless a profile would be absurd.
6. Decide on a "none of these" option. The manual recommends including it and reading its share as a relative, not absolute, indicator.
7. Set the sample size. Sawtooth's rules of thumb: plan about 300 respondents; at least 200 per subgroup reported separately; and check that each level is seen at least 500 times, preferably 1,000: n x t x a / c of at least 500, where t is tasks, a is profiles per task (without "none") and c is the largest number of levels in any attribute. Sawtooth presents these as rough guides developed for pooled models. Hand sampling to S2-02.
8. Build the questionnaire: screener, a short warm-up that explains each attribute (with pictures where possible), the choice tasks, then a few usage and demographic questions. Add one or two fixed holdout tasks to check predictions. Pretest (S3-02) in each language and time it; cut tasks if testers tire.
9. Field and clean. Remove respondents who finish implausibly fast or pick the same position every time (S3-09). Report how many were removed.
10. Estimate. The usual model is a logit model, commonly with hierarchical Bayes to obtain utilities per respondent. Compare levels within an attribute only; utilities of different attributes are not directly comparable level by level.
11. Compute attribute importance: the range of utilities within an attribute divided by the sum of ranges across attributes, as a percentage. Report it with the level ranges used.
12. Simulate. Enter the firm's candidate product and realistic competitors, read the shares of choice, then change one feature or the price and read the change. Use the simulator, not single utilities, for price sensitivity and willingness-to-pay statements. Call the output "share of preference".
13. State limits and next step: stated choices, full awareness and availability assumed, sample source. Recommend S1-09 or S7-02 to confirm a price or feature in the market. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a furniture maker is designing a three-seat sofa for cafes. Attributes: frame (stainless steel, painted steel, wood); upholstery (eco-leather, fabric, velour); warranty (1, 3, 5 years); delivery (7, 14, 30 days); price (6, 8, 10, 12 million som). Possible profiles: 3 x 3 x 3 x 3 x 4 = 324. Design: CBC, 10 tasks, 3 profiles plus "none". Sample check: c = 4, so n of at least 500 x 4 / (10 x 3) = 67 for 500 exposures and 134 for 1,000; planned n = 400 (200 Tashkent, 200 regions) so each group can be read separately.
Output (zero-centred utilities, all respondents):

| Attribute | Level utilities | Range | Importance |
|---|---|---|---|
| Price | 6m +60; 8m +20; 10m -20; 12m -60 | 120 | 40.0% |
| Delivery | 7 days +25; 14 days 0; 30 days -25 | 50 | 16.7% |
| Frame | stainless +25; painted -5; wood -20 | 45 | 15.0% |
| Warranty | 1 year -25; 3 years +5; 5 years +20 | 45 | 15.0% |
| Upholstery | eco-leather +20; fabric 0; velour -20 | 40 | 13.3% |

Check: ranges sum to 300; 120 / 300 = 40.0%; importances sum to 100%. FACT: within the tested ranges price carries 40% of the importance; moving from a 1-year to a 5-year warranty adds 45 points, a little more than a 2 million som price step between 8m and 10m (40 points). INTERPRETATION: a longer warranty could support a higher price, to be confirmed in the simulator against two competitor profiles and then in a live quote test. Limit: importance of price reflects the 6 to 12 million range chosen.

## Common mistakes
- Too many attributes or levels, so respondents simplify and answer on price alone.
- Vague levels ("high quality"), or levels the factory cannot deliver.
- Comparing utilities across attributes, or reading importance without the level ranges.
- Reading shares of preference as market share forecasts.
- Building the design by hand in a spreadsheet; skipping the pretest of the choice screens.
- Splitting a sample of 150 into four segments and reporting each.

## Quality checklist
- Do the attributes come from qualitative evidence and can the firm deliver every level? (yes/no)
- Are attribute and level counts within the stated limits? (yes/no)
- Was the design generated and tested by software for balance? (yes/no)
- Does each level reach at least 500 exposures and each reported subgroup about 200 respondents? (yes/no)
- Were choice screens pretested in each language and on a phone? (yes/no)
- Are level ranges reported next to importances? (yes/no)
- Are results described as shares of preference with stated assumptions? (yes/no)
- Is a market confirmation step proposed? (yes/no)

## Output template
```
CONJOINT / DISCRETE CHOICE STUDY (S1-10)
Decision this serves:                    Decision owner:
Type (CBC / adaptive / other) and software:
Attributes and levels (with source of each attribute):
Design: tasks per respondent, profiles per task, none option, holdout tasks, versions
Sample: source, n total, n per subgroup, exposure check n x t x a / c =
Fieldwork dates, languages, removed respondents (n, rule):

| Attribute | Level utilities | Range | Importance % |

Simulator scenarios: | Scenario | Our profile | Competitors | Share of preference | (FACT)
Reading and recommendation:                                                          (INTERPRETATION)
Limits (stated choice, ranges, sample, assumptions of the simulator):
Confirmation step in the market:         Next step:
```

## Works with
- S1-04, S1-05, S1-07 and S1-15: find the attributes and wording first. S4-16 Kano model: screens a long feature list before conjoint.
- S1-11 MaxDiff: ranks many single items when no price trade-off is needed. S1-12 price research: quick range before, or instead of, conjoint.
- S2-02 sampling, S2-03 sample size, S3-01 questionnaire rules, S3-02 pretest, S3-03 translation, S3-09 data-quality checks.
- S4-11 and S4-12: segment respondents on their utilities. S5-09 needs-based segments.
- S6-13 value-based pricing and S5-12 value proposition canvas: use the results. S1-09 and S7-02: confirm in the market.

## Notes for Uzbekistan
- Translate attribute and level names into Uzbek and Russian and pretest both; a level that reads differently in the two languages breaks the comparison.
- Choice tasks are long for a Telegram bot. Use a mobile web survey opened from Telegram, with 2 or 3 profiles per screen, and remember that such samples miss older and rural buyers.
- Polite answer habits matter less in choice tasks than in rating scales, but tired respondents may pick the first profile each time; check position patterns.
- Show prices in the form buyers meet them (total, per month, with or without delivery) and keep that form constant.
- Read Tashkent and regions separately before pooling; plan about 200 per group.
- The method's validation studies were run mostly in Western markets. Treat predicted shares as hypotheses and confirm with a live test.

## Sources
- Original: Green, P. E., & Srinivasan, V. (1990). Conjoint analysis in marketing, new developments with implications for research and practice. Journal of Marketing, 54(4), 3-19. https://doi.org/10.1177/002224299005400402 Paid. Full text not opened; the abstract was read at https://www.gsb.stanford.edu/faculty-research/publications/conjoint-analysis-marketing-new-developments-implications-research
- Opened: Green, P. E., Krieger, A. M., & Wind, Y. (2001). Thirty years of conjoint analysis, reflections and prospects. Interfaces, 31(3), S56-S73 (copy on a university course page). https://pages.charlotte.edu/wp-content/uploads/sites/868/2014/12/conjoint.pdf
- Opened: Sawtooth Software, Sample size rule of thumb for choice-based conjoint. https://sawtoothsoftware.com/resources/blog/posts/sample-size-rules-of-thumb
- Opened: Sawtooth Software, Lighthouse Studio manual, Number of attributes, levels and tasks in CBC. https://legacy.sawtoothsoftware.com/help/lighthouse-studio/manual/hid_web_cbc_designs_4.html
- Opened: Sawtooth Software, Lighthouse Studio manual, CBC questionnaires and design strategy. https://legacy.sawtoothsoftware.com/help/lighthouse-studio/manual/hid_web_cbc_designs_1.html
- Opened: Sawtooth Software, What is conjoint analysis (overview of types, utilities, importances, simulators). https://sawtoothsoftware.com/conjoint-analysis
- Note: the importance formula in step 11 is the standard calculation; the pages opened state only that importances sum to 100% and depend on level ranges.
