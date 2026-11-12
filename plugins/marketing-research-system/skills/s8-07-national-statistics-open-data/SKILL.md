---
name: s8-07-national-statistics-open-data
description: Finds, reads and cites official data from the Statistics Agency of Uzbekistan on population, prices, living standards and business. Use for market sizing and context in desk research.
---

# National statistics open data (S8-07)

The national statistics office of Uzbekistan publishes official figures on its website, stat.uz. The home page names it the Agency of Statistics under the President of the Republic of Uzbekistan. Its official statistics section is a set of topic pages, each a long list of indicator titles with a date beside each one. Topic pages opened for this skill (checked 12 November 2026): demography (permanent population by sex, age group, urban and rural; births, deaths, marriages, migration), prices (consumer price index by month and by year, by type of goods under the COICOP-2018 classification, by region; producer, housing, export and import price indices; average prices of selected goods by region) and living standards (household size and composition, durable goods per 100 households, household internet access by type, income per person by region, income distribution, poverty rate). The site also lists yearly publications by subject, such as small business, trade, prices, and social development and living standards. The home page links to related sites: the government open data portal data.egov.uz, a census site, a Sustainable Development Goals site, a library of methodological materials (lib.stat.uz) and a page of data in the IMF's e-GDDS format.

What could not be read: the agency's own open data page (stat.uz/en/17-partnerships/87-open-data-portal), the small business topic page, the quarterly reports page and lib.stat.uz all failed to open on 12 November 2026, and the interactive database siat.stat.uz showed only a header because it needs JavaScript. The pages that did open gave indicator titles and dates but no definitions, no units beyond what titles imply, no file formats and no statement about preliminary or revised figures. This skill does not fill those gaps.

Evidence grade: B. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Official statistics are the accepted standard for population, prices and incomes, and nothing else covers the whole country. They are not graded A here because the methods behind individual indicators were not readable on the pages opened, and no independent check was reviewed. The listed limit: consumer data at the level of a product category are scarce. The closest items seen were durable goods per 100 households and average prices of selected goods.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (a figure read on the live page or file today, with period, unit and date) versus INTERPRETATION. Open the live source every time; never reuse the example figures in this skill. Do not state any statistic about Uzbekistan from memory. When done, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A market size needs a base: number of people or households, by region, age, urban or rural.
- A plan needs price change, income per person or ownership of durable goods as context.
- A regional comparison needs the same official measure for each region.

Do not use it when:
- The question is about brands, purchase frequency, category spending by buyer type or media habits. Go to primary research (S1-08).
- The indicator's definition cannot be found. Report it as unverified, do not guess.
- A figure is needed for a period the agency has not yet published.

## What you need before starting (inputs)
1. The market sizing or context question, with the unit wanted (people, households, soums, units) and the geography.
2. Internet access to stat.uz today, and a browser with JavaScript if the interactive database is needed.
3. A team member who reads Uzbek or Russian, in case the English version is thinner.
4. The facts, assumptions, unknowns register (S0-13).

## Procedure
1. Open https://stat.uz/en/ and go to the official statistics section for the topic. Record the page title, the indicator title exactly as written, and the date printed beside it. If a page does not open, say so, try the Uzbek or Russian version, and if that fails stop; do not fill the gap from memory.
2. Open the indicator file itself. The listing page shows only the title. Record the reference period (month, quarter, year, or "as of" date), the unit and the geography from inside the file.
3. Read the date correctly. The dates beside indicators are in day/month/year order and are not labelled; they appear to be upload or update dates, not the period of the data. Working rule: cite both the data period and the page date, and never treat the page date as the period.
4. Read the unit correctly. Many headline figures are indices written as a percentage of an earlier period. Example of what the source contained on the date checked, re-check before use: the stat.uz home page showed retail trade for January to June 2026 as 120.2 per cent of January to June 2025, which means 20.2 per cent growth, not a level. Price indices come in several bases named only in the titles: previous month, December of the previous year, or the same period of the previous year. State the base every time and never mix bases in one table.
5. Check whether a value index is in real or nominal terms (with or without price change removed). Working rule: if the file does not say, write "not stated" and do not describe it as real growth.
6. Find the definition. Terms such as permanent population, small business, poverty rate or socially significant goods have official definitions that were not shown on the pages opened. Look in the file's notes or the methodological library; if not found, mark the term "definition not verified".
7. Read "per 100 households" as a count of items, not a share of households: it can exceed 100 and says nothing about how many households own none. It measures stock owned, not yearly purchases.
8. Handle revisions. Nothing on the pages opened said which figures are preliminary. Working rule: treat the newest periods as open to revision, save the file with the date downloaded, and re-download before a final report.
9. Handle regions. Regional tables seen cover the Republic of Karakalpakstan, the regions and Tashkent city. Region names are spelled in several ways in English (the price page used Navai and Djizzakh). Working rule: match regions by a fixed list in Uzbek, and check that the regional rows add up to the national total where they should.
10. Compare language versions when a figure matters. The site has Uzbek in Latin script, Uzbek in Cyrillic script, Russian and English. Working rule: the national-language version is the reference; say which version was read.
11. Turn the figure into a planning number in visible steps (S4-23), keeping official FACT apart from assumptions, and cross-check with a second source (S2-07).
12. Cite and log. A site footer seen on the publications page states a Creative Commons Attribution 4.0 licence and asks for a link to www.stat.uz. Citation format: Statistics Agency of Uzbekistan (name as shown on the page). [Indicator or publication title]. Data for [period], unit [..], [geography]. [URL]. Page dated [date]. Language version [..]. Checked [date]. Then return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - every number below is invented and is not a statistic about Uzbekistan. Input: a furniture maker wants a cautious yearly market for a household durable in one region.

```
Step                                               Number     Label
Households in the region                          400,000     invented "official figure"
Items per 100 households                               80     invented "official figure"
Items owned (stock): 400,000 x 80 / 100           320,000     calculation
Replaced each year (life of 10 years)              32,000     assumption, to be tested
New households each year (2%)                       8,000     assumption, to be tested
Items bought by new households (x 0.80)             6,400     assumption
Yearly market, central estimate                    38,400     INTERPRETATION
Range, plus or minus 25%                  28,800 to 48,000    Working rule
```
Arithmetic check: 400,000 x 80 / 100 = 320,000; 320,000 / 10 = 32,000; 400,000 x 0.02 = 8,000; 8,000 x 0.80 = 6,400; 32,000 + 6,400 = 38,400; 38,400 x 0.75 = 28,800; 38,400 x 1.25 = 48,000.
Output wording: only the first two rows would be official FACTS, each with period, unit and page date. Product life, household growth and the range are assumptions; S1-08 or sales data must test them.

## Common mistakes
- Quoting an index such as 120.2 as a level or as "120 per cent growth".
- Mixing price indices with different bases.
- Citing the date printed on the page as the period of the data.
- Reading "per 100 households" as the percentage of households that own the item.
- Using a term without its official definition.
- Summing regions that are spelled differently and counting one twice or missing one.
- Treating the newest figure as final.
- Presenting stock owned as yearly sales.
- Taking a figure from memory, an old report or this skill instead of the live page.

## Quality checklist
- Was the live page and the indicator file opened today?
- Are period, unit, base and geography recorded for every figure?
- Is the page date kept separate from the data period?
- Is each definition found, or marked "definition not verified"?
- Is the language version named, and the file saved with the download date?
- Are assumptions separated from official figures, with a range?
- Is the citation complete, including the date checked?

## Output template
```
OFFICIAL STATISTICS READING - [client / project] - checked [date]
Indicator: [exact title] | page [URL] | page date [dd/mm/yyyy] | language [..]
FACT: value [..] | unit [..] | base (if index) [..] | period [..] | geography [..]
Definition: [text and where found] / definition not verified
Status: preliminary / final / not stated | file saved on [date]
PLANNING NUMBER (INTERPRETATION): step -> number -> assumption -> how to test
Range: [low] to [high] | cross-check (S2-07): ...
Not available in this source: ...
Citation: Statistics Agency of Uzbekistan. [title]. Data for [period], unit [..],
  [geography]. [URL]. Page dated [date]. Language version [..]. Checked [date].
```

## Works with
- S1-03 secondary (desk) research first: the first stop for population and price bases. S0-07 3C and 5C situation analysis and S0-09 PESTEL: context sections. S0-13 facts, assumptions, unknowns register: logging.
- S4-23 market sizing: the main user of these figures. S5-09 needs-based segments and S6-01 segmentation, targeting, positioning: sizing groups. S6-06 95-5 rule: share of buyers in the market in a period.
- S2-07 triangulation and S8-03 research validity in emerging markets: cross-checks. S8-06 Listening to the Citizens of Uzbekistan survey, S8-05 Central Bank consumer sentiment review, S8-04 DataReportal Digital Uzbekistan: other sources to set beside it.
- S1-08 surveys (usage and attitude): when category-level data are missing. S7-03 before and after tracking with benchmark: official series as the benchmark.

## Notes for Uzbekistan
- The agency's name appears in more than one form across pages and years. Cite the name shown on the page read.
- English pages may lag or be thinner than Uzbek or Russian ones. Have a native reader check the term before translating it (S3-03).
- Tashkent city is reported separately from Tashkent region; do not merge or confuse them.
- Regional averages hide differences between a regional centre and rural districts; treat any transfer to a district as a hypothesis.
- A census site was linked from the home page; check whether newer population bases have replaced older ones before sizing a market.

## Sources
All pages opened and checked on 12 November 2026.
- Statistics Agency of Uzbekistan, home page (headline indicators for January to June 2026). https://stat.uz/en/
- Official statistics, living standards topic page. https://stat.uz/en/official-statistics/living-standards
- Official statistics, prices and indexes topic page. https://stat.uz/en/official-statistics/prices-and-indexes
- Official statistics, demography topic page. https://stat.uz/en/official-statistics/demography
- Publications list (licence note in footer). https://stat.uz/en/publications
- Opened with almost no content: https://siat.stat.uz/ (header only, needs JavaScript) and https://data.egov.uz/eng (menus only, counters showed zero).
- Could not be opened: https://stat.uz/en/17-partnerships/87-open-data-portal, the small business topic page, the quarterly reports page and https://lib.stat.uz/en/. Pages were read through an automated page reader, so re-check details on the live page.
