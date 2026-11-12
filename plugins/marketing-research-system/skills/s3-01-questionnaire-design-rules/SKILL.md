---
name: s3-01-questionnaire-design-rules
description: Writes and reviews survey questions with tested rules on wording, order, scales, agree-disagree formats and don't-know options. Use for every questionnaire or survey bot before pretesting.
---

# Questionnaire design rules (S3-01)

Questionnaire design rules are a set of findings from decades of survey experiments on how the wording, format and order of questions change the answers people give. The most used summary is by Jon Krosnick (Stanford) and Stanley Presser (Maryland): the chapter "Question and Questionnaire Design" in the Handbook of Survey Research (2010). It first lists the conventional wording advice, then reviews the experiments on open versus closed questions, number and labelling of scale points, order of answer options, agree-disagree formats, "don't know" options, social desirability, recall and question order, and ends with methods for testing a draft. This skill turns that chapter into rules for writing and reviewing every survey the agency fields, including Telegram survey bots.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The rules below rest on many experiments, so follow them unless there is a stated reason not to. Two limits apply. Most of the experiments were run in English with American or European respondents, so a rule tells you what to expect, not what will happen with an Uzbek or Russian wording. And the authors themselves say the rules do not settle the exact wording or order of a particular questionnaire, so a draft that follows every rule still has to be pretested (S3-02).

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (what the draft question says, what a cited experiment found) versus INTERPRETATION (your judgement that a question will be misread). Never rewrite a question silently: show the old wording, the rule and the new wording. When the reviewed questionnaire is delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- Writing a new questionnaire, screener, feedback form or survey bot script.
- Reviewing a client's or colleague's draft before it goes to pretest or to the field.
- Results look odd and the question itself may be the cause.

Do not use it when:
- The task is an interview or focus group guide. Those need open, story-based questions (S3-04, S3-05).
- A tracking question must stay comparable with earlier waves. The chapter advises keeping the earlier wording when comparison is the goal, even if it breaks a rule; test an improved version on a random part of the sample if needed.
- The team has not yet decided what to measure. Go back to S2-01 and S2-12 first.

## What you need before starting (inputs)
1. The research questions and the analysis plan: which table or number each question will feed (S2-01, S1-08).
2. Who will answer, in which language, and in which mode: Telegram bot, web form, phone or face to face.
3. The draft questionnaire if one exists, and any earlier questionnaires on the same topic.
4. Words respondents themselves use for the category, taken from interviews or an open pilot question.
5. Time limit for the respondent. Working rule: decide the maximum length before writing, not after.

## Procedure
1. Tie every question to a use. Ask the user: "Which decision or table needs this answer?" Delete questions with no use. The chapter reports that later items in self-administered questionnaires get more missing answers, more agreement and less differentiation, so every extra question costs quality.
2. Apply the conventional wording rules to each question: simple, familiar words and no jargon; simple syntax; specific and concrete, not general; one topic per question (no double-barrelled items); no leading or loaded wording; no single or double negatives; answer options that cover every case and do not overlap.
3. Choose open or closed by what is being asked. For amounts (how many, how much, how often) ask an open numeric question: the chapter reports that ranges offered in a closed question signal what is normal and shift the answers. For a choice among categories, a closed list works only if it is complete; an added "other" option does not repair a short list because respondents tend to stay with what is listed. Build the list from an open version asked in a pilot. If someone will not give an amount, follow up with "more or less than X?".
4. Replace agree-disagree, true-false and yes-no opinion items with item-specific options. The chapter's summary of acquiescence: across studies, about 10 percentage points more people agree with a statement than disagree with its opposite, and the effect grows with difficulty and fatigue. Saris, Revilla, Krosnick and Shaeffer (2010) compared the two formats in experiments and found clearly lower response quality for agree-disagree. Rewrite so that the answer options name the thing being judged: not "Do you agree that the price is high?" but "How do you find the price?" with options from very low to very high. The chapter does not recommend fixing acquiescence by mixing reversed statements.
5. Set the number of scale points. The chapter reports that reliability rises from two to three to five points and levels off at about seven, with little gain beyond that for a single item, and that seven-point scales are often the best choice. Keep a midpoint: a cited study found that offering one improved reliability and validity. Working rule: use five or seven points; choose seven only if every point can be given a natural label in both Uzbek and Russian.
6. Label every point with words, not only the ends; the chapter reports higher reliability for fully labelled scales. Choose labels that sound evenly spaced. On a small screen or by phone, a long scale can be split into two steps (direction first, then strength), which the chapter describes for telephone surveys; using it in a bot is a working rule of this skill.
7. Control the order of answer options. Reported pattern: when options are read by the respondent (screen, card), early options are chosen more; when heard, later ones are; rating scales show the early-option effect in both modes. For lists without a natural order, randomise per respondent. For rating scales use two versions, forward and reversed, split at random, never a full shuffle.
8. Decide on "don't know". The chapter advises against routinely offering it or a no-opinion filter on attitude questions: the experiments it reviews found no gain in data quality, and many people who choose it turn out to hold a view. Working rule: do not add "don't know" to opinion items; where experience is required, put a factual filter question first (bought in the last month or not) and route people without experience past the item.
9. Help recall on behaviour questions: use a short, clearly bounded reference period; split a broad question into parts; let people answer in the units they use themselves; do not ask them to calculate what you can calculate later.
10. Lower social desirability pressure on sensitive items: self-completion and anonymity produce more honest reports than an interviewer does; wording can present the less approved answer as common.
11. Order the questionnaire. Open with easy, interesting questions that match the topic announced in the invitation; keep hard or sensitive items away from the start; group by topic and move from general to specific; put demographics last. Ask all screening questions together before any follow-up block, because respondents learn that "yes" brings more questions.
12. Review the draft question by question with the template below, mark each as keep, change or delete, and state the rule. Then send it to S3-03 if more than one language is used and to S3-02 for pretest. Where two wordings are both defensible, propose a split-sample test, which the chapter recommends. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a juice brand's draft Telegram bot survey in Uzbek, six questions, sent for review.

```
Q  DRAFT (FACT)                                  RULE BROKEN            ACTION
1  "Yoshingiz?"                                  demographics first     move to end
2  "Sharbatimiz sifatli va narxi qulay degan     double-barrelled;      split into 2a, 2b
    fikrga qo'shilasizmi?  Ha / Yo'q"            agree format; leading
3  "Oyiga necha marta sharbat olasiz?            ranges signal what     open number,
    1-2 / 3-5 / 6-10 / 10+"                      is normal; overlap     last 7 days
4  "Qaysi brendni olasiz? A / B / C / Boshqa"    list not complete      pilot open, rebuild
5  "Sifat: 1 ... 10"  (only ends labelled)       unlabelled, too long   5 labelled points
6  "Oxirgi 7 kunda sharbat sotib oldingizmi?"    none                   keep, move to start
REWRITE of 2a: "Bu sharbatning sifatini qanday baholaysiz?
  Juda yomon / Yomon / O'rtacha / Yaxshi / Juda yaxshi"   (order reversed for half)
REWRITE of 2b: "Bu sharbatning narxi siz uchun qanday?
  Juda arzon / Arzon / O'rtacha / Qimmat / Juda qimmat"
Routing: Q6 = "yo'q" -> skip 2a, 2b and 3.                          INTERPRETATION:
  no "don't know" needed on 2a and 2b after this filter.
Result: 6 drafts -> 1 kept, 4 changed, 1 replaced by two; final count 7 questions.
```
Arithmetic check: actions 1 keep (Q6) + 4 change (Q1, Q3, Q4, Q5) + 1 split (Q2) = 6 drafts; final 1 + 4 + 2 = 7 questions. Draft Q3 overlap: "6-10" and "10+" both contain 10.

## Common mistakes
- Agree-disagree grids because they are quick to write.
- Numeric scales with only the ends labelled, or different scale lengths on every question.
- Closed ranges for amounts, with boundaries guessed by the team.
- A short brand or reason list rescued with "other".
- Adding "don't know" to every opinion item, or forcing people with no experience to rate.
- Demographics and sensitive questions first; screening questions scattered through the form.
- Treating the rules as proof that the wording works, and skipping the pretest.
- Changing a tracking question between waves without a parallel test.

## Quality checklist
- Does every question feed a named table or decision?
- Is each question about one thing, in respondents' own words, without negatives or leading phrases?
- Are amounts asked as open numbers with a bounded period?
- Are opinion items item-specific, with no agree-disagree format left?
- Do scales have five or seven points, a midpoint and a word label on every point?
- Is option order randomised or reversed for half the sample?
- Is "don't know" replaced by an experience filter where possible?
- Is the order easy to hard, general to specific, demographics last, and is a pretest planned?

## Output template
```
QUESTIONNAIRE REVIEW - [project] - [date] - mode: [bot / web / phone / face to face]
Languages: ... | Max length: ... questions / ... minutes | Tracking items to keep unchanged: ...
No | Draft wording (original language) [FACT] | Feeds which table | Rule broken | Action (keep / change / delete) | New wording
SCALES: points ... | midpoint y/n | all labelled y/n | order versions: forward / reversed
FILTERS AND ROUTING: filter question -> who skips what
ORDER CHECK: opener ... | sensitive items at ... | demographics at end y/n | screeners grouped y/n
OPEN ISSUES FOR PRETEST (S3-02): ... | Split-sample tests proposed: ...
```

## Works with
- S1-08 surveys and S2-01 research brief: what must be measured. S2-12 measure development: multi-item measures, which the chapter also recommends over single items. S2-13 total survey error: where question error sits among other errors.
- S3-02 cognitive interviewing: the pretest every reviewed draft goes to. S3-03 translation and back-translation: other language versions.
- S3-07 response styles across cultures and S3-08 common method bias remedies: format effects beyond single questions. S3-09 satisficing and data-quality checks: what to check in the collected data. S3-06 indirect questioning: sensitive topics.
- S1-12 price research, S1-22 brand health tracking, S4-20 Net Promoter Score: surveys whose fixed question formats should be kept as specified.

## Notes for Uzbekistan
- The experiments behind these rules were mostly in English. Treat each rule as a hypothesis for Uzbek and Russian wordings and confirm with a local pretest (S3-02).
- Write and check scale labels separately in Uzbek and in Russian; a label set that sounds evenly spaced in one language may not in the other. Keep Latin and Cyrillic Uzbek versions identical in wording (S3-03).
- Polite or agreeing answer habits make agree-disagree items and yes-no opinion items especially risky. Prefer item-specific options and behaviour questions, and read results with S3-07.
- Telegram bots show options as buttons and are read on small screens, so the early-option effect is the one to plan for; keep labels short and randomise or reverse order.
- A bot sample misses older and rural people and people outside the channel. Good wording does not fix that; state it in the report (S2-02).
- Use units and periods people in the segment already use, found in interviews or the pilot, not assumed by the team in Tashkent.

## Sources
- Original, opened: Krosnick, J. A., and Presser, S. (2010). Question and Questionnaire Design. In Handbook of Survey Research, 2nd ed. (editors P. V. Marsden and J. D. Wright; Emerald). The book is paid; the chapter is posted on Krosnick's Stanford page and was read there (editor and publisher details are from the standard reference, not from the file). https://web.stanford.edu/dept/communication/faculty/krosnick/docs/2010/2010%20Handbook%20of%20Survey%20Research.pdf
- Opened, open access (abstract page): Saris, W., Revilla, M., Krosnick, J. A., and Shaeffer, E. M. (2010). Comparing questions with agree/disagree response options to questions with item-specific response options. Survey Research Methods, 4(1), 61-79. https://ojs.ub.uni-konstanz.de/srm/article/view/2682
- Opened: Rothgeb, J., Willis, G., and Forsyth, B. (2005). Questionnaire Pretesting Methods. U.S. Census Bureau Research Report, Survey Methodology 2005-02 (limits of review methods). https://www.census.gov/content/dam/Census/library/working-papers/2005/adrm/rsm2005-02.pdf
- The experience-filter rule, the five-or-seven rule, the two-step scale in bots and the review table are working rules of this skill, built on these sources.
