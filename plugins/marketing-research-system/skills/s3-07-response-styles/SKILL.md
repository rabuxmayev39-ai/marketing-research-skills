---
name: s3-07-response-styles
description: Measures agreeing, extreme and middle answer habits per country or language group and adjusts scale choice and reading. Use when comparing Uzbek and Russian survey results side by side.
---

# Response styles across cultures (S3-07)

A response style is a habit of using a rating scale in a certain way whatever the question is about. Four styles are usually measured: acquiescence (agreeing), disacquiescence (disagreeing), extreme responding (choosing the end points) and middle responding (choosing the midpoint). When groups differ in these habits, a difference in average scores can come from how the scale was used and not from a real difference in opinion. Anne-Wil Harzing tested this in a 26-country study (2006), and found that styles differed by country and were linked to country-level power distance, collectivism, uncertainty avoidance and extraversion. Her related studies showed that the language of the questionnaire also changes answers, and that the choice of scale format changes how strong the styles are.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. That styles differ between countries and languages, and that format matters, is well supported. The direction for any country not studied is not. Uzbekistan was not among the 26 countries, and no Central Asian country appears in the author's summary, so this skill gives no expected direction for Uzbek or Russian-language respondents here. The method is to measure the styles in the team's own data and treat any expectation as a hypothesis.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (the style shares computed from the data, the scale used) versus INTERPRETATION (whether a gap between groups is style or substance). Do not state what Uzbek or Russian-speaking respondents "tend to" do unless the team's own data show it. When the scale decision or the reading is delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A survey with rating scales will be compared across countries, regions or questionnaire languages.
- The team is choosing between 5-point and 7-point scales, or between rating and ranking.
- Results show one group scoring higher on nearly everything.

Do not use it when:
- There is one group and one language and no comparison is planned; follow S3-01.
- The questions are factual (bought or not, how many times). Styles concern rating scales.
- A translation fault is suspected for single items. Check S3-03 and S3-02 first; a style affects all items, a translation fault affects one.

## What you need before starting (inputs)
1. The groups to compare and how questionnaire language is assigned or chosen.
2. The draft questionnaire with scale formats (S3-01) and the translated versions (S3-03).
3. For analysis: respondent-level answers, not only averages.
4. A set of rating items on unrelated topics. A methods dissertation opened for this skill notes that style measures should be built from uncorrelated items so that style is not mixed with one real attitude. Working rule: at least 8 items on different topics; with fewer, report the indices as rough.
5. Sample size per group (S2-03).

## Procedure
1. State the comparison and the risk in one sentence, for example "Uzbek-language versus Russian-language respondents on brand ratings; a style difference could create or hide a gap".
2. Choose the scale. In Harzing and colleagues' two studies (1,965 undergraduates in 24 countries on 5-point scales; 1,714 MBA students in 18 countries on 7-point scales), the midpoint share was 21.2% on 5-point and 13.2% on 7-point scales, and the end-point share was 28.2% and 23.2%. Country differences in these two styles were smaller on the 7-point scale. Agreeing and disagreeing changed far less. Decision rule from that paper: if items must be rated and groups will be compared, prefer 7 points. Working rule: weigh this against the small screen of a Telegram bot and pretest (S3-02).
3. Use ranking or forced choice for the few comparisons the decision rests on. In the same paper, ranked answers to scenarios produced country groupings that matched known cultural clusters while rated items did not, and the authors conclude that ranking removes the four styles. They also note the cost: ranked data limit the statistics that can be run, and their rating and ranking questions covered different topics. S1-11 is a ranking-type alternative.
4. Balance agreement items where possible. Working rule from general questionnaire practice: include some items where agreeing means a negative view, so that pure agreeing does not always raise the score.
5. Plan language assignment. In Harzing's 2005 study (3,419 students, 24 countries including Russia), half of each country's students answered in English and half in their own language; country differences were larger in the native-language version for 64 of 68 items. The author's explanation is cultural accommodation: people shift answers toward the norms of the language used. Working rule: let each respondent answer in their stronger language, record the language used and the language spoken at home, and never assume that two language versions are interchangeable.
6. Compute the style indices per respondent across the unrelated items, then average per group. Definitions used in the 2009 paper: ARS (agreeing) = share of answers on the agree side, 4-5 on a 5-point scale or 5-7 on a 7-point scale; DRS (disagreeing) = share on the disagree side, 1-2 or 1-3; MRS (middle) = share at the midpoint, 3 or 4; ERS (extreme) = share at the two end points; balance = ARS minus DRS. Spreadsheet: =COUNTIF(range,">=4")/COUNT(range) for ARS on a 5-point scale.
7. Compare groups on each index before looking at any substantive result, and test the differences (S4-10).
8. Read substantive gaps against the style gaps. Working rule: when a gap in a top-two-box score between groups is about the same size as the ARS gap across unrelated items, label it "cannot be separated from response style". When it is clearly larger, or runs against the style, treat it as a candidate real difference.
9. Cross-check with a style-free measure: a ranking, a choice, or behaviour (S2-07, S1-23). If the ranking shows no gap where the rating showed one, report the rating gap as style.
10. Prefer within-group comparisons for decisions. Working rule: compare brands or statements inside each language group (which is rated highest, by how much) and then compare the patterns, not the raw levels.
11. Report the scale, the language assignment, the style indices per group, and which gaps were judged style, substance or undecided. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data, and the direction shown is invented, not a claim about any group. Input: a juice brand's Telegram survey with 5-point agreement scales; 300 respondents chose the Uzbek version and 200 the Russian version. Ten rating items on unrelated topics are used for the style indices; the brand item is not among them.

```
STYLE INDICES (10 items per respondent)                                  FACT
                    Uzbek version          Russian version
Answers             300 x 10 = 3,000       200 x 10 = 2,000
Agree side (4-5)    1,950 = 65.0%          1,000 = 50.0%
Midpoint (3)          600 = 20.0%            500 = 25.0%
Disagree side (1-2)   450 = 15.0%            500 = 25.0%
End points (1 or 5) 1,050 = 35.0%            500 = 25.0%
Balance ARS - DRS   65.0 - 15.0 = 50.0     50.0 - 25.0 = 25.0
ARS gap between versions: 65.0 - 50.0 = 15.0 points
BRAND ITEM "I like the taste of brand X", agree side                     FACT
Uzbek 72% | Russian 58% | gap 72 - 58 = 14 points
RANKING CHECK "Which of these four brands would you buy first?"          FACT
Brand X first: Uzbek 93 of 300 = 31% | Russian 60 of 200 = 30% | gap 1 point
READING
The 14-point rating gap is about the size of the 15-point agreeing gap
  on unrelated items, and the ranking shows almost no gap. The rating
  gap cannot be separated from response style.                  INTERPRETATION
Decision: do not tell the client that Uzbek-version respondents like
  brand X more. Report rank order of brands inside each version.
```
Arithmetic check: 1,950 + 600 + 450 = 3,000; 1,950 / 3,000 = 0.650; 600 / 3,000 = 0.200; 450 / 3,000 = 0.150; 1,050 / 3,000 = 0.350. 1,000 + 500 + 500 = 2,000; 1,000 / 2,000 = 0.500; 500 / 2,000 = 0.250. 65 - 15 = 50; 50 - 25 = 25; 65 - 50 = 15; 72 - 58 = 14; 93 / 300 = 0.31; 60 / 200 = 0.30; 31 - 30 = 1.

## Common mistakes
- Comparing mean scores or top-two-box shares between language groups with no style check.
- Assuming a direction for Uzbekistan from another country's result or from a general idea about politeness.
- Computing style indices from items on one topic, so real attitude is counted as style.
- Believing that a 7-point scale solves the problem; in the source it reduced middle and extreme answers but hardly touched agreeing.
- Treating the Uzbek and Russian versions as the same instrument without recording which one each person used.
- "Correcting" scores by subtracting a style index and presenting the result as exact.

## Quality checklist
- Is the comparison across groups or languages stated before fieldwork?
- Is the scale length chosen with the comparison in mind and pretested on the survey device?
- Is questionnaire language recorded for every respondent?
- Are ARS, DRS, MRS and ERS computed per group from items on unrelated topics?
- Are substantive gaps compared with the style gaps before being reported?
- Is there a ranking, choice or behaviour check for the key comparison?
- Does the report say that Uzbekistan was not in the source studies and that direction is a hypothesis?

## Output template
```
RESPONSE STYLE NOTE - [project] - [date]
Groups compared: ... | Language assignment: chosen by respondent / assigned | Scale: 5 / 7 points
Style items: [n] items on unrelated topics (list)
INDEX (FACT)        Group A (n=...)   Group B (n=...)   Gap   Test
ARS agree side      ...               ...               ...   ...
DRS disagree side   ...               ...               ...   ...
MRS midpoint        ...               ...               ...   ...
ERS end points      ...               ...               ...   ...
Balance ARS - DRS   ...               ...               ...
Substantive gap | size | style gap of same kind | style-free check | verdict: style / substance / undecided
Reporting decision: ... | Limits: Uzbekistan not in source studies; direction treated as hypothesis.
```

## Works with
- S3-01 questionnaire design rules and S2-12 measure development: scale length, labels and balanced items. S3-03 translation and back-translation and S3-02 cognitive interviewing: rule out translation faults and test scale labels in both languages.
- S3-09 satisficing and data-quality checks: straight-lining looks like a style and must be removed first. S3-06 indirect questioning and S3-08 common method bias remedies: neighbouring sources of distorted answers; agreeing habits are one cause of shared method bias.
- S1-08 surveys, S1-22 brand health tracking, S4-20 Net Promoter Score: the scores most often compared across groups. S1-11 MaxDiff and S1-10 conjoint: style-resistant alternatives to rating.
- S4-10 crosstabs and significance tests: testing gaps. S4-13 factor analysis, S4-11 cluster analysis, S4-14 key driver analysis: run them per language group or after the style check, since styles inflate correlations.
- S2-07 triangulation and S1-23 prefer behaviour over stated reasons: the style-free check. S8-03 research validity in emerging markets and S2-13 total survey error: the wider frame.

## Notes for Uzbekistan
- The source studies cover English versus a native language. Uzbek versus Russian is a different pair, and many respondents use both; whether answering in a second language shifts styles here is a hypothesis. Harzing's 2006 study, as described in the later paper, linked better English to more extreme and fewer middle answers, which is a reason to record language strength, not a prediction.
- Polite or agreeing answer habits are a reason to measure ARS in every project, not a finding. Keep a running record of style indices by language and region across the agency's surveys (S8-08).
- Tashkent versus regions and Telegram-bot versus interviewer-led surveys can differ in style as much as languages do; compute indices for these splits too.
- A Telegram-bot sample misses older and rural people, so style indices from it describe Telegram users only.
- Scale labels must be pretested in both languages; label wording that differs in strength between the Uzbek and Russian versions will look like a style difference.

## Sources
- Original: Harzing, A.-W. (2006). Response styles in cross-national survey research: A 26-country study. International Journal of Cross Cultural Management, 6(2), 243-266. https://doi.org/10.1177/1470595806066332 Paid at the publisher; the author offers a free copy on harzing.com, but it could not be opened by the tool. Not read in full; findings taken from the author's summary and from the 2009 paper below.
- Opened, author's own site: Harzing, A.-W. (2017). What if fully agree doesn't mean the same thing across cultures? https://harzing.com/blog/2017/02/what-if-fully-agree-doesnt-mean-the-same-thing-across-cultures
- Opened, co-author's university repository: Harzing, A.-W., et al. (2009). Rating versus ranking: What is the best way to reduce response and language bias in cross-national research? International Business Review, 18(4), 417-432. https://mural.maynoothuniversity.ie/id/eprint/11208/1/AM_Ranking_2009.pdf
- Opened, same repository: Harzing, A.-W. (2005). Does the use of English-language questionnaires in cross-national research obscure national differences? International Journal of Cross Cultural Management, 5(2), 213-224. https://mural.maynoothuniversity.ie/11213/1/AM_Use_2005.pdf
- Opened, author's own site: Harzing, A.-W. (2018). Language effects in international mail surveys. https://harzing.com/blog/2018/06/language-effects-in-international-mail-surveys
- Opened, author's own site: Harzing, A.-W., & Reiche, B. S. (2007). Key issues in international survey research. https://harzing.com/publications/white-papers/key-issues-in-international-survey-research
- Opened in part, open-access dissertation (University of Nebraska-Lincoln, via CORE): Villar, A. (2009). Agreement answer scale design for multilingual surveys. https://core.ac.uk/download/17228279.pdf
