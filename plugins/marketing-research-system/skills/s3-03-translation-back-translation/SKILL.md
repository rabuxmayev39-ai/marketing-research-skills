---
name: s3-03-translation-back-translation
description: Produces Uzbek and Russian versions of a questionnaire or guide by team translation with review, back-translation as an optional check, and a local pretest. Use for any multi-language study.
---

# Translation and back-translation (S3-03)

Back-translation is a way to check a translated research instrument: one bilingual person translates the source text into the target language, a second person who has not seen the source translates it back, the two source-language texts are compared, and the translation is corrected where they differ. It is usually traced to Richard Brislin's 1970 article in the Journal of Cross-Cultural Psychology, an experiment in which 94 bilinguals at the University of Guam translated or back-translated six essays; he found that content, difficulty and language affected translation quality and argued that equivalence can be shown by comparing responses to the original and translated versions. The current alternative is team translation, known as TRAPD (Translation, Review, Adjudication, Pretesting, Documentation), set out in the Cross-Cultural Survey Guidelines of the University of Michigan and used in the European Social Survey. This skill uses TRAPD as the main procedure and back-translation as a secondary check.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Translation procedures have been studied in peer-reviewed research, so a documented procedure deserves weight and an undocumented one does not. But the research does not support relying on back-translation alone. The Guidelines no longer recommend it and say that comparing a back-translation with the source gives limited and possibly misleading information about the target text. Dorothée Behr's analysis shows it can both miss real errors and flag correct wording. An experiment by Epstein and colleagues (2015) found that an expert committee improved translated content while back-translation had only a moderate effect. A matching back-translation shows literal equivalence, not that people understand the question the same way.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (the wordings, who translated, what differed) versus INTERPRETATION (the judgement that two wordings mean the same). The assistant may draft or compare translations, but must say so in the log and may not be the only reviewer: a person fluent in the target language decides. When the final versions and log are delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A questionnaire, screener, consent text, bot script or interview guide will be used in more than one language.
- An instrument written abroad (a published scale, a client's global questionnaire) is to be used locally.
- Results will be compared between Uzbek-language and Russian-language respondents.

Do not use it when:
- The source wording is still changing. Finish S3-01 first; every change after translation must be repeated in all versions.
- The item makes no sense locally. That needs adaptation or a new item (S2-12), not a faithful translation.
- The only need is the same Uzbek text in the other script. That is conversion plus proofreading (step 9), not translation.

## What you need before starting (inputs)
1. A final, reviewed source questionnaire (S3-01) and a note on the intent of each item.
2. A decision on the source language (the language the team wrote and the client approved) and the target versions: Uzbek Latin, Uzbek Cyrillic, Russian.
3. At least two translators per target language. The Guidelines ask for strong skills in both languages, translation into the mother tongue, and knowledge of how survey questions work; they warn that being bilingual does not by itself make someone a translator.
4. A reviewer who knows questionnaire design, and one named person who makes final decisions (adjudicator).
5. Who the respondents are, the mode (bot, phone, face to face) and the register wanted, for the translators' briefing.
6. A shared log (spreadsheet) with one row per item.

## Procedure
1. Make the source translatable. Brislin's experiment found that harder texts translated less well, so shorten sentences, remove idioms, metaphors and double negatives, and repeat nouns instead of pronouns. Mark terms that must stay identical across items (scale labels, brand names, periods).
2. Brief the translators: purpose of the study, respondents, mode, tone, whether the text will be read or heard, the intent note, and how to record doubts. Ask for meaning in natural language, not word-for-word copies. The Guidelines advise translating from the source, not from another translation; so Russian and Uzbek versions are each made from the source.
3. T, translation. Two translators work independently on the whole text (parallel translation), each noting queries and alternatives. For long instruments and experienced teams the Guidelines allow split translation, each translator taking alternating parts, followed by a consistency check. Machine or AI drafts may serve as one input only with careful human review; the Guidelines advise against relying on them unreviewed, and against untrained ad hoc translation or translating aloud during the interview.
4. R, review. Translators and reviewer meet, compare the versions item by item against the intent note, and agree one wording. The reviewer leads and keeps notes. Check instructions, scale labels and answer options as closely as question stems. Working rule: where the two translations differ in meaning, write both in the log with the reason for the choice.
5. Optional back-translation check. Use it when the client or adjudicator cannot read the target language, when a client or licence requires it, or for high-stakes items. A person who has not seen the source translates the reviewed version back. Compare with the source and treat each difference as a flag to investigate, not as an error: decide whether the fault lies in the translation, the back-translation or the source. Working rule: never approve an item only because the back-translation matched; the target text itself must have been read by the reviewer.
6. A, adjudication. The named adjudicator decides open items and signs off the version for pretest. If the adjudicator does not read the target language, the decision rests on the review notes and the reviewer's advice.
7. Harmonise across versions. Compare the Uzbek and Russian versions side by side for scale length, label strength, periods, filters and routing. The Guidelines' principle for versions that must be compared is to keep them as close as possible and as different as necessary, and they caution that identical wording does not guarantee identical meaning.
8. P, pretest. Run cognitive interviews (S3-02) in each language with people who will answer in it, probing the items flagged in the log. Revise, and send changes back through review and adjudication.
9. Script versions. Working rule: translate into Uzbek once, convert to the second script, then have a person proofread the converted text in full, including buttons and error messages. The Guidelines do not cover scripts; this step is this skill's own.
10. Copy-edit every version against the source: all questions present, numbering, filters, scales in the same direction, hidden bot texts.
11. D, documentation. Keep the log: translators, dates, alternatives, flags, decisions, pretest changes. After fieldwork, if answers differ sharply by language, check the log and wording before interpreting the difference as real (S3-07). Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a Tashkent furniture maker's customer survey, 12 items, source in Russian, target Uzbek (Latin, then Cyrillic).

```
PROCESS  T: translators A and B (parallel) -> R: review meeting -> back-translation by C
         -> A: adjudication by project lead -> P: 5 cognitive interviews in Uzbek
LOG (extract)                                                              FACT
Item 4  source: "Насколько вы довольны сроком изготовления?"
        A: "Tayyorlash muddatidan qanchalik mamnunsiz?"
        B: "Mebel o'z vaqtida tayyor bo'lganidan qoniqdingizmi?"
        Review: B changes the meaning (asks "on time: yes or no", not degree). Chose A.
Item 7  back-translation differs from source ("цена" came back as "стоимость").
        Review: Uzbek wording is correct; difference made by back-translator. No change.
SUMMARY
Flagged by back-translation: 3 items -> 2 real translation errors, 1 false alarm.
Found in review or pretest but not shown by back-translation: 2 items.
Items changed: 2 + 2 = 4 of 12; unchanged: 8.
INTERPRETATION: back-translation alone would have left 2 faulty items in the field.
```
Arithmetic check: 3 flags = 2 real + 1 false; changed 2 + 2 = 4; 12 - 4 = 8 unchanged; faulty items missed by back-translation = 2.

## Common mistakes
- One bilingual employee translates alone and nobody reviews the target text.
- Treating a matching back-translation as proof of quality, or "fixing" a good translation to make the back-translation match.
- Word-for-word translation that is correct and unnatural.
- Translating Uzbek from the Russian translation of an English source, stacking errors.
- Translating the questions carefully and the scale labels, buttons and instructions carelessly.
- Changing the source after translation and updating only one version.
- Converting script automatically and not proofreading.
- No log, so nobody can say later why versions differ.

## Quality checklist
- Was the source finalised and simplified before translation?
- Did two people translate independently into their mother tongue?
- Was there a review meeting and a named adjudicator?
- If back-translation was used, was every flag investigated and no item passed on a match alone?
- Were scales, filters and periods compared across all versions?
- Was each language version pretested with its own speakers?
- Was the second-script version proofread by a person?
- Is there a log with alternatives, decisions and reasons?

## Output template
```
TRANSLATION LOG - [project] - [date]
Source language: ... | Targets: UZ Latin / UZ Cyrillic / RU | Mode: ...
Team: translator 1 ... | translator 2 ... | reviewer ... | adjudicator ... | back-translator (if any) ...
AI or machine draft used: y/n, for which step
Item | Source | Intent | Translation 1 | Translation 2 | Reviewed version | Back-translation | Flag and cause | Decision and reason | Pretest finding | Final
Harmonisation check UZ vs RU: scale points ... | labels ... | periods ... | routing ...
Script conversion: from ... to ... | proofread by ... on ...
Sign-off for pretest: ... | Sign-off final: ... | Known remaining differences: ...
```

## Works with
- S3-01 questionnaire design rules: the source must be final before translation. S2-12 measure development: when an item must be adapted or replaced.
- S3-02 cognitive interviewing: the pretest step of TRAPD in each language.
- S3-07 response styles across cultures and S8-03 research validity in emerging markets: reading differences between language groups. S4-10 crosstabs and S4-13 factor analysis: checks on collected data by language.
- S1-08 surveys, S1-22 brand health tracking, S1-10 conjoint, S1-11 MaxDiff: instruments that need versions. S3-04 story-based interview guides: guides also need two languages, with looser wording.
- S2-10 research ethics and consent: consent texts are translated with the same care.

## Notes for Uzbekistan
- Decide per project which language is the source; do not assume Russian or Uzbek. Record it in the log.
- Offer respondents the language and script they prefer and record the version each person used, so results can be checked by version.
- Uzbek Latin and Cyrillic versions must carry identical wording. Check letters with apostrophes and loanwords after conversion, and check that the bot displays them correctly.
- Choose words by pretest, not by dictionary or by the team's own speech: everyday terms can differ between Tashkent and regions and between speakers who mix Russian and Uzbek. Treat any such expectation as a hypothesis.
- Trained survey translators may be hard to find. The Guidelines accept selecting proficient bilinguals and training them; give more weight to review and pretest in that case.
- Keep verbatim answers and quotes in the original language; translate only for the report.
- The research behind these procedures comes from other language pairs. Its transfer to Uzbek and Russian is a hypothesis that the pretest tests.

## Sources
- Original: Brislin, R. W. (1970). Back-translation for cross-cultural research. Journal of Cross-Cultural Psychology, 1(3), 185-216. https://doi.org/10.1177/135910457000100301 Paid; full text not opened. Only the abstract was read, in a bibliographic index record.
- Opened, free: Survey Research Center (2016). Guidelines for Best Practice in Cross-Cultural Surveys. Ann Arbor: Institute for Social Research, University of Michigan. Translation chapter pages read: Overview https://ccsg.isr.umich.edu/chapters/translation/overview/ ; Team https://ccsg.isr.umich.edu/chapters/translation/team/ ; Shared Language Harmonization https://ccsg.isr.umich.edu/chapters/translation/harmonization/ ; Assessment https://ccsg.isr.umich.edu/chapters/translation/assessment/
- Opened: Behr, D., and Hanke, K. (2019). Conference slides on back-translation and TRAPD, European Survey Research Association conference site (they summarise Behr 2017 and describe a planned experiment, not results). https://www.europeansurveyresearch.org/conf2019/uploads/773/71/76/Behr_Hanke_2019_ESRA.pdf
- Behr, D. (2017). Assessing the use of back translation: the shortcomings of back translation as a quality testing method. International Journal of Social Research Methodology. https://doi.org/10.1080/13645579.2016.1252188 Not opened; known here only through the slides above.
- Opened, abstract only (university repository record): Epstein, J., Osborne, R., Elsworth, G., Beaton, D., and Guillemin, F. (2015). Cross-cultural adaptation of the Health Education Impact Questionnaire. Journal of Clinical Epidemiology, 68(4), 360-369. https://dro.deakin.edu.au/articles/journal_contribution/Cross-cultural_adaption_of_the_Health_Education_Impact_Questionnaire_experimental_study_showed_expert_committee_not_back-translation_added_value/20954116
- The script-conversion step, the back-translation decision rules and the log layout are working rules of this skill.
