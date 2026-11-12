---
name: s4-21-content-analysis
description: Counts features of ads, posts or other content using a written codebook, independent coders and an inter-coder reliability test. Use for competitor ad and social media audits.
---

# Quantitative content analysis with a codebook and inter-coder reliability (S4-21)

Quantitative content analysis turns a body of content (ads, social media posts, websites, packaging, reviews) into numbers by applying fixed, written category definitions to every unit and counting the results. Its standard texts are Klaus Krippendorff's Content Analysis: An Introduction to Its Methodology and Kimberly Neuendorf's The Content Analysis Guidebook. What separates it from an informal "audit" is the reliability test: at least two people code the same material independently and their agreement is measured, most often with Krippendorff's alpha, a coefficient that corrects for agreement expected by chance. Hayes and Krippendorff (2007) proposed alpha as the standard measure because it works with any number of coders, any level of measurement and missing data.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The method and its reliability statistics are well studied. This means the counts can be trusted to the extent that the reliability test was passed. It does not mean the counts say anything about effectiveness: content analysis describes what competitors publish, not what works on audiences.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (coded counts with their reliability) versus INTERPRETATION (what the pattern suggests). Return to the research-orchestrator skill when done.

## When to use it / When not to use it
Use it when:
- The question is "how often", "how much" or "who does more of what" in a defined body of content.
- Several brands or periods must be compared on the same criteria.
- The result must be repeatable next quarter by other people.

Do not use it when:
- The categories are not yet known; do an exploratory reading first (S4-01, S1-14) and build the codebook from it.
- The interest is in meaning or audience reaction in depth; counting will not answer that.
- There is only one coder and no way to add a second; then report the work as a descriptive review without reliability, not as content analysis.
- The body of content is very small; just describe it. As a working rule of this skill, under about 30 units.

## What you need before starting (inputs)
1. The research question and the comparisons wanted (brands, periods, formats).
2. A defined population of content: which accounts or channels, which platforms, which dates, which formats, and how it will be captured (screenshots or exports with date and link).
3. At least two coders who read the content's languages, and one person who owns the codebook.
4. A spreadsheet for coding: one row per unit, one column per variable.
5. A tool for alpha: Hayes's KALPHA macro for SPSS or SAS, or an equivalent R or Python package.

## Procedure
1. Fix the question and the unit. Ask the user: "What exactly do we count, in what content, over what period, and what will we compare?" Define the unit of analysis (one post, one ad creative, one video) before anyone looks at the data. Pre-defined units make agreement easier to reach than letting each coder cut the material differently.
2. Define the population and sample. List every unit in scope. Code all of them if feasible. If not, sample by a stated rule (for example every third post per brand per month) and record the rule. Archive each unit with date and source.
3. Draft the codebook. For each variable write: name, definition, the categories, a rule for each category, a borderline example, and what to code when nothing applies. Categories within a variable must be mutually exclusive and together cover every case (include "other" and "not present"). Prefer features that can be seen (price shown yes/no, format, language, presence of a person) to judgments (tone, "premium feel"); judgment variables need tighter rules and more training.
4. Train and pilot. Coders discuss the codebook, then each codes the same small set of units that will not be part of the final reliability test. Compare, find where definitions were read differently, and rewrite the codebook. Repeat until the disagreements stop being about definitions. Record the codebook version.
5. Run the reliability test. Draw a reliability subsample from the real material. Published guidance on its size exists (Lombard and colleagues point to Lacy and Riffe, 1996); this skill's working rule is at least 10 percent of units and not fewer than 50, covering all brands. Coders work independently, without conferring, applying the codebook as written and noting ambiguities. Ideally the coders are not the person who wrote the codebook, and coders are not replaced midway.
6. Compute Krippendorff's alpha for each variable separately, using the version for that variable's level of measurement (nominal, ordinal, interval, ratio). Alpha equals 1 minus observed disagreement divided by the disagreement expected by chance: 1 means perfect agreement, 0 means agreement no better than chance. Do not rely on simple percent agreement; it ignores chance and is described in the literature as a liberal index.
7. Apply the decision rule. The benchmarks commonly attributed to Krippendorff are: alpha of 0.80 or above is reliable; between 0.667 and 0.80 allows only tentative conclusions; below 0.667 the variable should not be used. Hayes and Krippendorff add that the minimum should depend on how much rests on the result, and they recommend looking at the confidence interval for alpha, not only the point value. Set the rule before coding and write it down. (a) Passed: go on; (b) Tentative: report the variable with a caution label, or improve it; (c) Failed: revise the definition, retrain, and retest on fresh units, or merge categories, or drop the variable. With very few units or a category that almost never occurs, alpha can come out unstable or near zero even when coders look as if they agree; inspect the coding table by hand and treat the variable as unconfirmed.
8. Code the full set. After the test is passed, coders can split the remaining units. Freeze the codebook; if it must change, recode what was coded under the old version. For units in the reliability subsample, settle disagreements by a stated rule (discussion, or a third coder) and record it.
9. Analyse. Produce counts and percentages per brand and period, with the number of units as the base for every percentage. Compare brands. For small bases give counts, not percentages. Keep description (FACT) apart from reading (INTERPRETATION).
10. Report. Include: population and sampling rule, unit, codebook (as appendix), number and training of coders, size of the reliability subsample, alpha per variable and the decision rule, how disagreements were settled, limits. Lombard and colleagues ask that the index, its justification and the decision rule always be stated. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. A Tashkent furniture maker audits Instagram posts of three competitors for one quarter.
Input: 240 posts (80 per brand, every post in the quarter). Unit: one post. Two coders, both read Uzbek and Russian. Reliability subsample: 60 posts, 20 per brand.
Output:
```
RELIABILITY (60 posts, 2 coders, nominal alpha)
V1 Format (photo/carousel/video)        alpha 0.94  passed       FACT
V2 Price shown (yes/no)                 alpha 0.88  passed       FACT
V3 Caption language (uz/ru/both/none)   alpha 0.91  passed       FACT
V4 Main appeal (6 categories)           alpha 0.71  tentative    FACT
V5 "Premium tone" (yes/no)              alpha 0.52  failed - dropped
Decision rule set in advance: 0.80 pass; 0.667-0.80 tentative.
RESULTS (240 posts)
Price shown: Brand A 51 of 80 | Brand B 12 of 80 | Brand C 9 of 80   FACT
Video share: A 20 of 80 | B 44 of 80 | C 38 of 80                    FACT
Main appeal (tentative): B and C mostly design, A mostly price       FACT, caution
Reading: A competes on visible price; nobody leads on delivery terms  INTERP
Limit: shows what brands post, not what buyers respond to.
```

## Common mistakes
- One person codes everything and the result is called content analysis. Reporting percent agreement only.
- Coders discuss units during the reliability test. Changing the codebook midway without recoding.
- Categories that overlap, or no "other / not present" option. Testing reliability on the training units.
- One overall reliability figure instead of one per variable. Reading effectiveness into frequency ("they post it often, so it works").
- Percentages on tiny bases.

## Quality checklist
- Are the population, period, unit and sampling rule written down?
- Does every variable have a definition, exclusive and exhaustive categories, and examples?
- Did at least two coders code the reliability subsample independently?
- Was the reliability subsample separate from the training material?
- Is alpha reported per variable against a rule set in advance?
- Were failed variables revised and retested, or dropped?
- Was the codebook frozen for the main coding?
- Are counts reported with bases, and interpretation kept apart?

## Output template
```
CONTENT ANALYSIS - [project] - [date]
Question: ...
Population: [accounts / platforms / dates / formats] | units: [N] | sampling rule: ...
Unit of analysis: ...
Coders: [n], languages, training rounds: [n] | codebook version: ...

RELIABILITY
Subsample: [n] units | decision rule (set in advance): ...
Variable | level | alpha | CI if available | status pass / tentative / failed | action

RESULTS [FACT]
Variable | Brand A n of base | Brand B n of base | Brand C n of base

READING [INTERP]
...
Limits: ...
Appendix: codebook, disagreement rule, archive location
```

## Works with
- S4-22 share of voice: uses the same captured content; this skill supplies coded content features.
- S1-14 netnography and S4-01 thematic analysis: exploratory reading that produces the categories for the codebook.
- S1-13 mystery shopping: checks whether advertised claims match the experience.
- S4-04 coding cycles: for building categories before they are fixed.
- S4-05 matrix displays: brand-by-variable tables.
- S2-07 triangulation and S2-08 trustworthiness criteria: combine counts with interviews or sales data before drawing conclusions. S5-02 insight ladder: move from counted patterns to insights with care.

## Notes for Uzbekistan
- Content is often in Uzbek (Latin and Cyrillic script), Russian, or mixed in one post. Coders must read all of them; add a language and script variable, and write codebook examples in both languages, kept in the original in the codebook and report.
- Decide in advance which platforms are in scope (for example Instagram, Telegram channels, outdoor) and say which are left out; a brand's activity can differ between them.
- Brands may target Tashkent and the regions with different content; record the target area where it can be seen, and do not generalise from a Tashkent-facing account.
- If coders hesitate to disagree with a senior colleague, keep the reliability coding blind: separate files, no discussion until alpha is computed.
- This method describes published content. Do not draw conclusions about Uzbek consumers from it.

## Sources
- Original: Krippendorff, K. Content Analysis: An Introduction to Its Methodology. Sage. Paid book; not opened.
- Original: Neuendorf, K. A. The Content Analysis Guidebook. Sage. Paid book; not opened.
- Opened: Hayes, A. F., & Krippendorff, K. (2007). Answering the call for a standard reliability measure for coding data. Communication Methods and Measures, 1(1), 77-89. https://www.asc.upenn.edu/sites/default/files/2021-03/Answering%20the%20Call%20for%20a%20Standard%20Reliability%20Measure%20for%20Coding%20Data.pdf
- Opened: Krippendorff, K. Computing Krippendorff's alpha-reliability. University of Pennsylvania. https://www.asc.upenn.edu/sites/default/files/2021-03/Computing%20Krippendorff%27s%20Alpha-Reliability.pdf
- Opened: Lombard, M., Snyder-Duch, J., & Bracken, C. C. (2004). A call for standardization in content analysis reliability. Human Communication Research, 30(3), 434-437. https://core.ac.uk/download/216953321.pdf
- Opened: Reliability in software engineering qualitative research through inter-coder agreement, a guide using Krippendorff's alpha (arXiv 2008.00977); source for the 0.667 and 0.80 benchmarks as attributed to Krippendorff. https://arxiv.org/pdf/2008.00977
- Opened (abstract only): Krippendorff, K. (2004). Reliability in content analysis: Some common misconceptions and recommendations. Human Communication Research. https://repository.upenn.edu/entities/publication/19a38e6b-0547-4942-8250-5989caece4b9
