---
name: s3-06-indirect-questioning
description: Rewrites sensitive questions to ask about people like the respondent, tests them against direct wording and reads the gap. Use for money, status, family and religion-related topics.
---

# Indirect questioning (S3-06)

Indirect questioning asks the respondent what another person or a group ("people like you", "most people", "a typical buyer") thinks or does, instead of asking about the respondent. The idea is that people answer more freely about others and, in doing so, project their own views. It is used to reduce social desirability bias, the tendency to give answers that avoid embarrassment or make the respondent look good. The technique is old in marketing research; the key test is Robert J. Fisher's 1993 paper in the Journal of Consumer Research. Across three studies he compared indirect questions with direct ones and found that indirect wording reduced the bias on variables that are under social influence and made no significant difference on socially neutral variables.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The effect has been tested, and a 2021 replication opened for this skill found the same pattern. The grade covers one claim: indirect wording moves answers on socially loaded items. It does not cover the claim that an indirect answer equals the respondent's own truth. Respondents may be describing others, and critics point out that this cannot be ruled out from the answers alone. Treat indirect results as a second reading next to the direct one, not as a corrected measurement.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (the wording used, the share answering each way under each wording) versus INTERPRETATION (what the gap says about respondents themselves). Never report an indirect result as "X% of customers do this". When the items or the reading are delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A question touches something people may want to look good about: money and debt, status and showing off, family duties, religion-related practice, "responsible" consumption.
- Direct answers in a pretest look too good to be true or cluster on the respectable option.
- An interviewer or a group is present, so the respondent is answering in front of someone.

Do not use it when:
- The topic is not sensitive. The American Marketing Association guidance opened for this skill says to check sensitivity first and use plain direct questions when the topic is not sensitive.
- The team needs each respondent's own value for later analysis by person (segmentation, drivers). An indirect answer is not a personal measurement.
- The team needs a defensible estimate of how common a hidden behaviour is. That calls for behaviour data (S1-23, S4-08) or masking designs such as list experiments or randomized response, which are outside this skill.
- The referent group would be one the respondent does not belong to. Fisher reports that an undesirable trait was attributed to an out-group and not to an in-group, so answers about outsiders say little about the respondent.

## What you need before starting (inputs)
1. The list of questions and which of them are likely to be socially loaded, with the reason (S3-01).
2. Who the respondents are, so a referent group they belong to can be named.
3. The mode: self-completed (Telegram bot, online) or interviewer-led.
4. Sample size, to decide whether a split test of wordings is possible (S2-03).
5. At least one socially neutral question on the same topic to use as a control.

## Procedure
1. Screen each question for sensitivity. Ask the team: would some respondents feel judged by one of the answers, by the interviewer, by family present, or by themselves? Working rule: mark an item as loaded only when the team can name which answer is the respectable one. Leave unmarked items direct.
2. Try the cheaper fixes first on loaded items: a clear anonymity statement, neutral wording, a longer reference period, and a "prefer not to say" option. These are listed in the AMA guidance. Keep the indirect version for items that still look loaded after this.
3. Choose the referent. Working rule based on Fisher's in-group finding: name a group the respondent belongs to and is close to ("families like yours", "bakers like you", "people of your age in your mahalla"), not "other people" in general and not a group they look down on.
4. Write the pair. Keep the statement and the answer scale identical and change only the point of reference. A 2021 replication used this form: the direct version asked how much the respondent agrees, the indirect version asked how much a typical consumer would agree with the same statement.
5. Decide the design. Working rule: in a survey with enough sample, split respondents at random so that half get the direct and half the indirect wording of the loaded items, which shows the size of the gap; in a small survey, ask only the indirect version of the loaded items and report it as a view about the group; in an interview or focus group, ask the indirect version first, then, if rapport allows, "and in your own home?" (S1-04, S1-05).
6. Add the neutral control item in both wordings. In Fisher's studies and in the replication, wording made no significant difference on neutral or functional items. Working rule: if the two wordings differ clearly on the neutral item too, respondents are probably estimating what others do, and the indirect answers should not be read as projection.
7. Pretest both wordings with a few respondents and ask whom they had in mind when answering the indirect version (S3-02). If they name specific others ("my neighbour who always borrows"), the referent is too distant or too vague; rewrite it.
8. Analyse. For each loaded item report the result under each wording and the difference. For a split test, test the difference between the two groups (S4-10).
9. Read the gap with three labelled statements. FACT: the two results and their difference. INTERPRETATION: a gap on loaded items with no gap on the neutral item suggests the direct answer is held back by social pressure. LIMIT: the indirect figure is not the true share. A law professor's review of bribery surveys states the dilemma: if people take the question literally they report beliefs about others; if they see it is really about them, the pressure to hide returns. Working rule: report the direct figure as a likely lower (or upper) bound for the respectable answer and the indirect figure as a signal of direction, never as the corrected value.
10. Decide what follows. A large gap on an item the decision depends on is a reason to check behaviour (S1-23, S4-08, S2-07), not a reason to quote the indirect number. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a furniture maker runs a Telegram-bot survey of 400 recent sofa buyers and wants to know whether buyers stretch their budget to impress guests. Respondents are split at random: 200 direct, 200 indirect. Answers are agree / disagree.

```
LOADED ITEM
Direct:   "I chose a more expensive sofa than I planned so that guests
           would think well of our home."
Indirect: "Families like yours choose a more expensive sofa than planned
           so that guests would think well of their home."
Agree, direct:    36 of 200 = 18%                                        FACT
Agree, indirect:  94 of 200 = 47%                                        FACT
Gap: 47 - 18 = 29 percentage points
NEUTRAL CONTROL ITEM
Direct:   "Delivery within one week was important to me."
Indirect: "Delivery within one week is important to families like yours."
Agree, direct:   142 of 200 = 71%                                        FACT
Agree, indirect: 138 of 200 = 69%                                        FACT
Gap: 71 - 69 = 2 percentage points
READING
Wording changes the loaded item and not the neutral one, so the 18%
  is probably held down by social pressure.                    INTERPRETATION
Not claimed: that 47% of buyers do this. Report "at least 18% say so
  about themselves; 47% say families like theirs do". Check against
  planned versus paid price in order records (S4-08).
```
Arithmetic check: 200 + 200 = 400; 36 / 200 = 0.18; 94 / 200 = 0.47; 47 - 18 = 29; 142 / 200 = 0.71; 138 / 200 = 0.69; 71 - 69 = 2.

## Common mistakes
- Reporting the indirect result as the respondents' own behaviour or as a market share.
- Changing the statement as well as the referent, so the two wordings are not comparable.
- Using "most people" or an outside group when a close in-group could be named.
- Running no neutral control, so projection cannot be told apart from guessing about others.
- Using indirect answers as a variable in person-level analysis such as key drivers or clustering.
- Skipping the simpler fixes (anonymity, neutral wording, opt-out) and going straight to indirect wording.

## Quality checklist
- Is there a stated reason why each indirect item is socially loaded, with the respectable answer named?
- Is the referent a group the respondent belongs to?
- Are the direct and indirect versions identical except for the point of reference?
- Is there a neutral control item in both wordings?
- Was the indirect wording pretested by asking whom respondents had in mind?
- Are results reported per wording, with the gap, and with FACT and INTERPRETATION labels?
- Does the report avoid presenting the indirect figure as the true value?
- Is there a planned behaviour check for any item the decision rests on?

## Output template
```
INDIRECT QUESTIONING NOTE - [project] - [date]
Mode: ... | Sample: ... | Design: split direct/indirect / indirect only / interview probe
Item | Why loaded (respectable answer) | Referent group | Direct wording | Indirect wording
...
Neutral control item: direct ... | indirect ...
Pretest (whom did respondents have in mind?): ... | RESULTS (FACT):
Item | Direct % (n) | Indirect % (n) | Gap (points) | Test result
Control | ... | ... | ... | ...
READING (INTERPRETATION): ...
LIMIT stated in report: indirect figures describe views about the group, not respondents' own behaviour.
Follow-up behaviour check: ...
```

## Works with
- S3-01 questionnaire design rules: neutral wording and placement of sensitive items. S3-02 cognitive interviewing: the "whom did you have in mind" probe. S3-03 translation and back-translation: the referent phrase must mean the same in both languages.
- S3-10 projective and metaphor techniques: the open, qualitative relatives of this structured technique. S1-04 in-depth interviews and S1-05 focus groups: indirect probes in conversation.
- S3-07 response styles across cultures and S3-09 satisficing and data-quality checks: other sources of distorted answers to separate from social desirability. S3-08 common method bias remedies: social desirability is one source of shared bias.
- S1-23 prefer behaviour over stated reasons, S4-08 say-do analysis, S2-07 triangulation: the checks for a large gap.
- S4-10 crosstabs and significance tests and S2-03 survey sample size: testing the split. S2-10 research ethics and consent: anonymity promises that are true. S2-13 total survey error: where this bias sits among other errors.

## Notes for Uzbekistan
- Write the referent phrase separately in Uzbek and in Russian and pretest each; "people like you", "sizga o'xshagan oilalar" and "такие семьи, как ваша" may point respondents to different groups.
- Polite and agreeing answer habits add to social desirability and can also raise agreement with the indirect version. Use the neutral control item and S3-07 before reading a gap.
- In interviewer-led work at home, family members or neighbours may be present; record who was present, since the audience is part of the pressure the technique is meant to reduce.
- Tashkent and regional respondents may have different reference groups in mind; analyse the gap by location before pooling.
- A Telegram-bot survey is self-completed, which removes the interviewer, but its sample misses older and rural people. An indirect answer from this sample is a view of "families like ours" among Telegram users only.
- The replication opened for this skill used German convenience samples, and its authors note that cultural effects were not examined; Fisher's own samples were not checked because the full paper was not opened. Which topics are sensitive here, and how strongly, is a hypothesis for the pretest; this skill states no facts about Uzbek consumers.

## Sources
- Original: Fisher, R. J. (1993). Social desirability bias and the validity of indirect questioning. Journal of Consumer Research, 20(2), 303-315. https://doi.org/10.1086/209351 Paid; only the abstract was read, on the publisher page: https://academic.oup.com/jcr/article-abstract/20/2/303/1793106
- Opened, open access: Kilian, S., & Mann, A. (2021). The phantom of the "responsible consumer": Unmasking the intention-action gap with an indirect questioning technique. Sustainability, 13(23), 13394. https://www.mdpi.com/2071-1050/13/23/13394/htm (first part of the page read)
- Opened, professional body: Gregori, M., de Jong, M. G., & Pieters, R. (2024). Proven and new survey techniques to obtain sensitive information from consumers. American Marketing Association. https://www.ama.org/marketing-news/proven-and-new-survey-techniques-to-obtain-sensitive-information-from-consumers/
- Opened, academic blog (critique): Stephenson, M. (2017). Can indirect questioning induce honest responses on bribery experience surveys? Global Anticorruption Blog. https://globalanticorruptionblog.com/2017/09/26/can-indirect-questioning-induce-honest-responses-on-bribery-experience-surveys/
