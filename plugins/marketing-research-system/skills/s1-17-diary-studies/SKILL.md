---
name: s1-17-diary-studies
description: Respondents log behaviour close to the moment it happens over days or weeks. Use to study habits, routines and frequent purchases that people recall poorly.
---

# Diary studies (S1-17)

In a diary study, respondents report repeatedly on events and experiences in their daily lives, at or near the time they happen, over days or weeks. The approach has a long history in psychology; Niall Bolger, Angelina Davis and Eshkol Rafaeli (2003) wrote the standard review, covering which questions diaries suit, the main designs, the technology for collecting entries and the analysis. Their summary phrase is that diaries capture "life as it is lived". In marketing, diaries are used for habits and frequent purchases: what was bought or used, when, where, with whom and for what occasion, recorded before memory reshapes it.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Diary methods are well tested in peer-reviewed research, and so are their weaknesses: burden, drop-out, entries filled in late, self-selection of who agrees to take part, and the possibility that keeping a diary changes the behaviour. Give good weight to entries made close to the event by respondents who stayed in. Be careful when projecting diary totals to a market, because people who complete diaries differ from those who refuse or drop out.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (logged entries, completion counts) versus INTERPRETATION (patterns, reasons, projections). When the plan or the analysed diary data are delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The behaviour is frequent and small, so people cannot recall it accurately in an interview or survey (snacks, drinks, bread, top-up shopping, media use).
- Sequence and context matter: what happened before, where, with whom, on which occasion.
- Change within the same person over time matters, for example weekdays versus weekends or before and after payday.
- The team can keep contact with respondents for the whole period.

Do not use it when:
- The event is rare (buying a flat, a sofa). A diary period would catch almost none. Use S1-07 or S1-16.
- The decision is needed within a few days.
- Respondents cannot or will not write or tap entries regularly, and no voice or photo option can be offered.
- The question is about reasons and meanings in depth. Diaries record what happened; follow with interviews.
- A one-time survey with a short recall question would be accurate enough for the decision.

## What you need before starting (inputs)
1. The decision and research question (S0-02, S2-01) and the exact behaviour or event to be logged.
2. Target respondents and a recruitment route, with over-recruitment for drop-out.
3. A logging channel respondents already use (messenger bot, web form, paper, voice notes). A person who sends reminders and answers questions every day of fieldwork.
4. Incentive budget tied to completion. Consent wording that explains the duration and what is collected (S2-10).

## Procedure
1. Check fit. Ask the user: "How often does this behaviour happen for a typical customer? Do we need what happened, or why?" Working rule: if a typical respondent would log fewer than about three events in the planned period, do not use a diary. Return to the research-orchestrator skill with S1-07, S1-16 or S1-08.
2. Choose the design (the three types used by Bolger and colleagues and by Wheeler and Reis): Interval-contingent: entries at fixed times, for example every evening. Suits daily summaries. Too long an interval misses events; too short raises burden. Signal-contingent: entries when a prompt arrives, at random or fixed times. Suits states that change through the day. Event-contingent: an entry each time a defined event happens. Suits purchases and consumption occasions. The event must be defined narrowly and clearly so respondents know when to log. No type is better in general; choose by the research question. For purchases, the default here is event-contingent plus a short evening check that also records "nothing today".
3. Define the event and the entry. Write one sentence: "Log every time you [buy / drink / order] X." Keep each entry to a few structured questions that take a minute or two: what, when, where, with or for whom, occasion, amount, plus one optional open line or photo. Nezlek's advice is fewer, better items. Arndt and Rose advise using respondents' own terms and consulting them on format. Always record zero days. Ask respondents to log days with no event, so that silence can be told apart from non-compliance.
4. Set the length. Long enough to cover the natural cycle of the behaviour (a full week at least if weekdays and weekends differ; a pay cycle if money timing matters), short enough to hold respondents. The sources warn that engagement often falls over time. Working rule: 7 to 14 days for most consumer topics.
5. Choose the channel. Electronic entries carry a time stamp, which shows when the entry was really made. Broderick reports a study in which paper diary users claimed about 90 percent compliance while a hidden chip verified 11 percent, against 94 percent verified for electronic diaries, with evidence of paper entries being filled in afterwards. Use a time-stamped channel that respondents already use. Offer voice or photo entries where writing is a barrier.
6. Plan the sample and expect losses. For a qualitative or descriptive diary, set the number with S2-04 and S2-06. For statistical within-person analysis, Nezlek suggests final samples of about 50 people and 7 days for person-level questions and about 100 people and 10 days for within-person relationships, and expects roughly 10 percent of participants to be excluded. Working rule: recruit 20 to 30 percent more than needed.
7. Brief and train. Explain the purpose honestly, define the event with examples and borderline cases, do one practice entry together, and agree reminder times that do not disturb sleep or work.
8. Pilot for two or three days with a few people. Check that the event definition is understood, time the entry, and fix the form. In one opened study a pilot revealed that many participants submitted few or no entries; reminders were added.
9. Run fieldwork. Send regular reminders; daily messages raised participation in one study. Check incoming entries daily, contact silent respondents within a day, answer questions fast. Pay by completed days or entries, not by content. Do not coach respondents on what to write.
10. Screen the data. Set exclusion rules before analysis and report them, for example a minimum number of valid days. Use time stamps to flag entries made long after the event or many entries made at once. Report: recruited, started, completed, excluded, and valid person-days out of possible person-days.
11. Check for reactivity. Compare the first days with the last days: a steady fall in logged events can mean fatigue; a change in the kind of product logged can mean the diary made people think about their behaviour. Evidence on reactivity is mixed in the sources, so report what you see and do not assume either way. Ask about it in the closing interview.
12. Analyse. Describe events by occasion, place, time and company; describe each person's pattern across days; then compare people. Entries are nested within people, so do not treat 200 entries as 200 independent respondents. For statistical tests on such data the standard approach is multilevel modelling; get a statistician if the client needs tests. For open text and photos use S4-01 or S4-05.
13. Close with a short interview for each respondent or a subset, using their own entries as prompts for the reasons behind them. Report with limits and return to the research-orchestrator skill.

## Worked example
INVENTED EXAMPLE - not real data. A juice brand wants to know on which occasions packaged juice is bought and drunk at home in Tashkent households with children. Input: event-contingent diary in a Telegram bot ("log every time anyone at home buys or opens packaged juice") plus an evening check with a "nothing today" button; 14 days; 20 households recruited; exclusion rule set in advance: fewer than 10 valid days. Output (extract):

```
Recruited 20 | completed 10+ valid days: 17 | excluded 3          FACT
Possible person-days: 17 x 14 = 238 | valid days logged: 203
  = 85 percent (203 / 238)                                         FACT
Juice occasions logged: 131 (average 131 / 17 = 7.7 per household) FACT
  For a child's school or snack box            | 58                FACT
  Guests or a family table                     | 41                FACT
  Other (alone, on the way, with a meal)       | 32                FACT
Purchases logged on the same day as a guest occasion: 29 of 41     FACT
Reading: two distinct occasions, a routine child occasion and a
  guest occasion that often triggers a same-day purchase.     INTERP
Reactivity check: occasions per day similar in days 1-7 and 8-14;
  two respondents said the diary made them notice sugar.      FACT + INTERP
Limits: 17 households, all Telegram users in Tashkent, recruited
  through the brand's channel; not a market estimate.
Next: closing interviews; occasions to S1-21.
```

## Common mistakes
- Using a diary for rare purchases and getting empty logs. A long entry form; respondents stop or answer without thinking.
- A vague event definition, so each respondent logs something different. No "nothing today" option, so gaps cannot be interpreted.
- Paper diaries collected at the end and trusted as if written daily. No reminders and no daily check of incoming entries.
- Dropping people after seeing the results, or not reporting exclusions.
- Counting entries as if each were a separate person, or projecting totals to the market.
- Ignoring that those who finish a diary are a self-selected group.

## Quality checklist
- Is the behaviour frequent enough to appear several times per respondent in the period?
- Is the design type chosen for the question, and the event defined in one clear sentence?
- Does an entry take only a minute or two, and can zero days be logged?
- Are entries time-stamped, and were late or batch entries flagged?
- Was there a pilot, a briefing with a practice entry, and regular reminders?
- Were exclusion rules set before analysis and are recruited, completed and excluded counts reported?
- Was reactivity looked for and is the result stated?
- Does the analysis keep entries grouped by person?

## Output template
```
DIARY STUDY PLAN / REPORT - [project] - [date]
Decision it serves: ... | Research question: ...
Design: interval / signal / event-contingent | event definition: "..."
Entry form: [fields] | time per entry | zero-day option: yes | Channel: ... (time-stamped: yes/no) | length: [days] | reminders: when
Sample: recruited [n] | started [n] | completed [n] | excluded [n, rule]
Compliance: valid person-days [x] of possible [y] = [..] percent
FINDINGS
Events logged: total [n], per person average and range
By occasion | place | time | with whom  [FACT, counts]
Person-level patterns: ...
Open entries and photos: themes (original language quotes) | Reactivity check: first half vs second half; what respondents said
READING [INTERPRETATION]: ...
Limits: self-selection, drop-out, channel coverage, logging effects
Hand-over: ...
```

## Works with
- S1-06 observation and contextual inquiry: when the team can watch instead of asking people to log. S1-23 prefer behaviour over stated reasons: the rationale for diaries. S1-04 in-depth interviews: the closing interview. S1-16 critical incident technique and S1-07 JTBD switch interviews: for rare events.
- S2-02 sampling, S2-04 qualitative sample size, S2-06 purposive sampling, S2-10 ethics and consent: for steps 5 and 6. S3-01 questionnaire design and S3-02 cognitive interviewing: for the entry form and pilot. S3-09 satisficing and data-quality checks: for step 10.
- S4-01 thematic analysis and S4-05 matrix displays: for open entries (one row per respondent, one column per day or occasion). S4-08 say-do analysis: compare diary records with what the same people say in interviews. S4-10 crosstabs: only with entries grouped by person.
- S1-21 Category Entry Point research and S1-20 customer journey research: occasions and sequences found in diaries feed both. S1-08 surveys: to size the occasions found.

## Notes for Uzbekistan
- Offer the diary form and reminders in Uzbek and Russian and let respondents write in either. Keep open entries in the original language.
- A Telegram bot is a practical time-stamped channel, but a bot sample is likely to miss older and rural people. State this limit, and for those groups consider a daily phone call by an interviewer who fills in the log.
- In shared households one person may not know what others bought or used. Decide whether the unit is the person or the household, and say who should log. Polite or agreeing habits can show up as tidy, "correct" entries or as hiding purchases the respondent thinks look bad. Stress that there are no good or bad answers, avoid brand sponsorship cues in the bot, and use photos of the product where possible.
- Plan dates with care: holidays, fasting periods, wedding seasons and paydays can change routines. Either avoid them or cover them on purpose, and name the period in the report.
- Run Tashkent and regional respondents as separate groups. Design guidance and sample sizes cited here come from Western psychology studies; treat them as starting points.

## Sources
- Original: Bolger, N., Davis, A., & Rafaeli, E. (2003). Diary methods: Capturing life as it is lived. Annual Review of Psychology, 54, 579-616. https://doi.org/10.1146/annurev.psych.54.101601.145030 Paid; only the abstract was opened (Bar-Ilan University record). https://cris.biu.ac.il/en/publications/diary-methods-capturing-life-as-it-is-lived-4/
- Opened: Nezlek, J. (2020). Diary studies in social and personality psychology: An introduction with some recommendations and suggestions. Social Psychological Bulletin, 15(2), e2679. Open access. https://spb.psychopen.eu/index.php/spb/article/download/2679/2679.html?inline=1
- Opened: Arndt, H., & Rose, H. (2023). Capturing life as it is truly lived? Improving diary data in educational research. International Journal of Research and Method in Education, 46(2), 175-186 (Oxford repository copy; Wheeler and Reis 1991 is cited as reported here, not opened). https://ora.ox.ac.uk/objects/uuid:b25e1a66-2be5-40e6-a319-d83614df3347/files/rp2676w386
- Opened: Broderick, J. E. (2008). Electronic diaries: Appraisal and current status. Pharmaceutical Medicine, 22(2), 69-74 (PubMed Central copy). https://pmc.ncbi.nlm.nih.gov/articles/PMC2796846
- Opened: American Psychological Association, guidance page on sampling in intensive longitudinal research (interval, signal and event designs; burden; reactivity). https://www.apa.org/research-practice/conduct-research/sampling-longitudinal-research
