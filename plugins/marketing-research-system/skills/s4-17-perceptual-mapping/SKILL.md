---
name: s4-17-perceptual-mapping
description: Draws maps of how buyers see competing brands, after removing the effect of brand size. Use when a team wants to compare brand images or check a positioning claim.
---

# Perceptual mapping of brands (S4-17)
A perceptual map is a picture in which brands that buyers see as similar sit close together. There are three common routes: a simple two-axis chart of attribute scores, correspondence analysis of a brand-by-attribute table (Michael Greenacre's books are the standard reference), and multidimensional scaling (MDS) of similarity judgements, covered together with the other routes in Hair and colleagues' Multivariate Data Analysis. Evidence grade: A, tested in peer-reviewed research. That grade covers two things: the mapping techniques are mathematically sound, and there is a well-replicated warning about the data that go into them. Research from the Ehrenberg-Bass Institute, starting from Bird, Channon and Ehrenberg in 1970 and re-tested on 45 data sets in 2012, shows that brand association answers follow past brand usage: bigger brands collect more mentions on almost every positive attribute. A map drawn from raw scores therefore mostly shows who is big. Put weight on the map only after the size effect has been removed and the result checked against the table.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (numbers in the table) or INTERPRETATION (your reading of the map).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- Survey data link several competing brands to several attributes, or rate how similar brand pairs are.
- The team wants to see which brands are perceived alike, or where a brand stands out more or less than its size predicts.
Do not use it when:
- There are fewer than about four brands or four attributes; a table is clearer (working rule).
- The team wants to "find the gap in the market" from the map alone. An empty area may be empty because nobody wants it.
- Respondents do not know most of the brands.

## What you need before starting (inputs)
- For the attribute routes: a table with brands in rows and attributes in columns, each cell the number of respondents who linked that brand to that attribute ("pick any" question), plus the sample size.
- For MDS: a similarity or dissimilarity rating for every pair of brands (10 brands means 45 pairs), averaged across respondents.
- Brand size for each brand: penetration or usage share from the same survey.
- Brand usage per respondent, if you want to compare users and non-users.
- Software for correspondence analysis or MDS (R, SPSS, Displayr, XLSTAT or similar). Excel and Google Sheets are enough for steps 1 to 4 only.

## Procedure
1. Check the attributes. Split them into descriptive ones (facts about a brand, such as "local" or "has a showroom in my district") and evaluative ones (such as "reliable", "good value"). Research on usage bias finds that evaluative attributes track brand size closely, while descriptive ones can belong to a specific brand.
2. Look at the raw table first. Sort brands by size. State as FACT which brand has the most mentions on each attribute. If the largest brand leads on nearly everything, say plainly that this is the expected size pattern and not a finding about image.
3. Remove the size effect with expected values. For every cell compute: expected = row total x column total / grand total. With brand totals in column F, attribute totals in row 7 and the grand total in F7, the formula for cell B2 is `=$F2*B$7/$F$7`. This is the same calculation Romaniuk uses for brand tables of Category Entry Points.
4. Compute deviations. Deviation = (actual - expected) / sample size, in percentage points. Romaniuk's guide for Category Entry Point tables treats deviations within plus or minus 5 points as "as expected"; this skill borrows that band as a working rule for attribute tables. Bigger positive deviations are a brand's relative strengths, bigger negative ones its relative weaknesses. This deviation table is the main deliverable and needs no special software.
5. Choose a map route.
   - Two-axis chart: only when two attributes are the decision. Plot deviations, not raw scores.
   - Correspondence analysis: for the full brand-by-attribute count table. It works on row and column profiles (each row divided by its total), so it compares brands relative to their own totals, which already reduces the size effect.
   - MDS: when you have pair similarity ratings and want a map that does not depend on a chosen attribute list.
6. If using correspondence analysis, read the map by these rules (from Greenacre and from Tim Bock's guide):
   - The centre is the average profile. Brands near the centre look like the category average; those far out differ more.
   - Report the share of inertia (variation) the two axes display. If it is low, important differences are hidden. Working rule: below about 70%, do not interpret small distances.
   - The map shows relative, not absolute, levels. A brand can sit near an attribute on which a bigger brand has more mentions.
   - Distances between two brands, or between two attributes, can be read only under the matching scaling option (principal or row or column principal). Do not read the plain distance between a brand point and an attribute point. To judge a brand-attribute link, draw lines from each to the centre: a small angle with both points far from the centre suggests association; about 90 degrees suggests none; opposite sides suggest a negative link.
   - Brands or attributes with few mentions tend to land at the edges and look more special than they are.
   - Keep the two axes on the same scale, and record which scaling option the software used.
7. If using MDS, check the stress value, which measures how badly the map reproduces the ratings (0 is perfect). Published rules of thumb differ: one teaching source calls about 0.1 fair and 0.05 good, another calls anything over 0.15 unacceptable. Working rule: above 0.15, add a dimension or do not use the map. The axes have no built-in meaning and the picture can be rotated or flipped; only which brands are close matters. Name the axes only if attribute data support the name.
8. Verify every claim against the table. For each statement you plan to make from the map, find the cells in the deviation table that support it. If the table does not support it, drop it.
9. Compare users and non-users where possible. Association answers are strongly tied to past usage, so run the deviation table separately for each brand's users and non-users before concluding that "people see us as...".
10. Write the result as a short list of relative strengths and weaknesses per brand, each with its numbers. Present the map as an illustration of that list.
11. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a Telegram survey of 400 people in Tashkent who are considering buying a flat. They marked which of four housing developers they link with each attribute.

| Developer | Reliable | Finishes on time | Affordable | Good locations | Total |
|---|---|---|---|---|---|
| A (largest) | 200 | 160 | 120 | 160 | 640 |
| B | 120 | 100 | 80 | 100 | 400 |
| C | 60 | 40 | 110 | 30 | 240 |
| D (smallest) | 40 | 50 | 20 | 10 | 120 |
| Total | 420 | 350 | 330 | 300 | 1400 |

Raw reading: A has the most mentions on all four attributes (FACT). INTERPRETATION: this is the brand-size pattern, not evidence of a better image.

Deviations: C on "affordable": expected 240 x 330 / 1400 = 57, actual 110, deviation +13 points (FACT). A on "affordable": expected 151, actual 120, deviation -8 points (FACT). A on "reliable": expected 192, actual 200, +2 points, as expected (FACT). D on "finishes on time": expected 30, actual 50, +5 points, borderline (FACT). C on "good locations": expected 51, actual 30, -5 points, borderline (FACT).

Output: INTERPRETATION: C is seen as the affordable choice relative to its size; A is relatively weak on affordability and has no image advantage on reliability beyond its size; D may have an on-time strength worth checking with a larger sample. A correspondence map would place C with "affordable" away from the centre and B near the centre.

## Common mistakes
- Mapping raw scores and concluding that the market leader "owns" every attribute.
- Reading the distance between a brand and an attribute on a correspondence map as a direct measure.
- Not reporting the share of variation shown, or the stress value. Naming axes with attractive labels that the data do not support.
- Treating an empty area of the map as a market opportunity.
- Interpreting small brands at the edge of the map that rest on a handful of mentions.

## Quality checklist
- Is the raw table shown with brands sorted by size? (yes/no)
- Were expected values and deviations computed before any map? (yes/no)
- Is the share of variation shown (or the stress value) reported? (yes/no)
- Is the scaling option of the map stated? (yes/no)
- Is every map-based claim backed by cells in the deviation table? (yes/no)
- Are brands or attributes with very few mentions flagged? (yes/no)
- Were users and non-users compared, or the absence explained? (yes/no)

## Output template
```
PERCEPTUAL MAPPING (S4-17)
Decision this serves:                     Who answered (n, dates, how recruited):
Brands (with size measure):               Attributes (descriptive / evaluative):
Question type: pick-any / ratings / pair similarity

Raw table (brands sorted by size):
Deviation table (percentage points from expected; band used for "as expected"):
| Brand | Relative strengths (attribute, deviation) | Relative weaknesses (attribute, deviation) |

Map route: two-axis / correspondence analysis / MDS      Software and scaling option:
Share of variation shown or stress:
Claims from the map, each with supporting cells, marked FACT or INTERPRETATION:
Users versus non-users check:
Limits and next research step:
```

## Works with
- S1-08 surveys and S3-01 questionnaire design: supply the brand-by-attribute or similarity data; S3-07 response styles: check for respondents who tick everything.
- S4-10 crosstabs and tests: test whether a deviation is larger than chance.
- S4-18 Double Jeopardy benchmarks: the same "normal for its size" logic applied to loyalty. S4-19 mental availability metrics: the same expected-value table applied to Category Entry Points.
- S1-22 brand health tracking: repeat the deviation table over time.
- S6-02 positioning statement and S6-04 distinctive brand assets: receive the relative strengths.

## Notes for Uzbekistan
- Show brand names and logos as they appear locally; brands may be known under Uzbek, Russian or Latin and Cyrillic spellings.
- Translate attributes into Uzbek and Russian, test that they mean the same, and keep the original wording in the report.
- Agreeing answer habits lead some respondents to tick many brands for every attribute; check and report how many did.
- Brand awareness and availability can differ between Tashkent and the regions; do not pool them without checking brand size in each. Telegram-bot samples miss older and rural people. The usage-bias pattern was established mostly in Western markets; expect it, but confirm it in the local table.

## Sources
- Hair, J. F., and colleagues, Multivariate Data Analysis (chapters on multidimensional scaling and correspondence analysis). Paid textbook. Not opened.
- Greenacre, M. (2010). Biplots in Practice, chapter 8, Correspondence analysis biplots. Fundacion BBVA, open access. Opened. https://www.fbbva.es/wp-content/uploads/2017/05/dat/greenacre_c08_ok_2010.pdf
- Opened: Bock, T. (2017). How to interpret correspondence analysis plots. https://www.r-bloggers.com/2017/05/how-to-interpret-correspondence-analysis-plots-it-probably-isnt-the-way-you-think/
- Opened: Riquier, C., & Sharp, B. (1997). Image measurement and the problem of usage bias. EMAC Conference paper, Ehrenberg-Bass archive. https://assets.marketingscience.info/4909.pdf
- Opened (abstract only): Romaniuk, J., Bogomolova, S., & Dall'Olmo Riley, F. (2012). Brand image and brand usage. Journal of Advertising Research, 52(2), 243-251. https://digital.library.adelaide.edu.au/items/16520f35-0011-4e83-b85b-b2b013bdf3f4
- Opened: Bock, T., Davis, T., Freeman, L., & Garlin, F., Towards a taxonomy of brand association statements (reports the Romaniuk and Sharp 2000 usage-bias finding). https://opus.lib.uts.edu.au/bitstream/10453/3064/1/2005001060.pdf
- Opened: Romaniuk, J. (2022). Category Entry Points in a B2B World. LinkedIn B2B Institute (expected-value calculation and the 5-point band). https://business.linkedin.com/content/dam/lem/business/en/advertise/resources/b2b-institute/b2bi-cepinb2b-final.pdf
- Opened: NYU Stern class note on multidimensional scaling (no author named). https://pages.stern.nyu.edu/~gsimon/B902301Page/CLASS12_05MAY10/MDS01.pdf Also opened: Radiant help page on MDS brand maps (no author named). https://rdrr.io/github/kwanjeeraw/radiant.wordcloud/f/inst/app/tools/help/mds.md
