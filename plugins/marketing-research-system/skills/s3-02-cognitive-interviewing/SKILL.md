---
name: s3-02-cognitive-interviewing
description: Pretests a draft survey by having five to ten people answer aloud and explain what each question means to them. Use before launching any questionnaire or survey bot.
---

# Cognitive interviewing (pretest) (S3-02)

Cognitive interviewing is a pretest in which a few people from the target group answer the draft questionnaire one at a time while an interviewer finds out how they understood each question and how they arrived at each answer. It grew out of work joining cognitive psychology and survey methods in the 1980s; the standard texts are by Gordon Willis: the free "Cognitive Interviewing: A How To Guide" (1999, Research Triangle Institute, based on his work at the US National Center for Health Statistics) and the book Cognitive Interviewing (2005). The method rests on Roger Tourangeau's four-stage model of answering a question: comprehension, retrieval from memory, decision or judgement, and response. Its two techniques are think-aloud and verbal probing. Its purpose is to find and repair questions that people misread or cannot answer, before money is spent on fieldwork.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The method is standard practice in statistical agencies and has been studied in peer-reviewed work, so use it before every survey. Weigh its results with care: it is a small qualitative pretest; a comparison across three organisations found only moderate agreement on which items were problematic; Krosnick and Presser rate it as less reliable than behaviour coding; and Willis describes the evidence that its findings hold in the field as supportive but not conclusive. It finds wording and logic problems. It says nothing about sampling, response rates or how common a problem is.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (what a participant said or did, in the original language) versus INTERPRETATION (the diagnosed problem and the proposed fix). Do not report pretest answers as survey results. The assistant prepares the protocol and analyses notes; a person runs the interviews. When the revised questionnaire and pretest note are delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A questionnaire, screener or survey bot script is drafted and reviewed (S3-01) but not yet launched.
- A translated version is ready and must be checked in that language (S3-03).
- A fielded question gave strange results and the team needs to know how people read it.

Do not use it when:
- The question is who answers or how many: that is sampling (S2-02, S2-03), not wording.
- The team wants opinions about the product. Participants here are testing the questions, not being researched.
- The draft has not had a desk review. Willis's sequence starts with an expert appraisal so that interviews are not spent on problems visible on paper.
- It would be the only test of a bot. Skip logic, buttons and timing also need a technical run and a small live pilot (S3-09).

## What you need before starting (inputs)
1. The draft questionnaire in the exact form respondents will see: bot, web form or interviewer script, in each language version.
2. The intent of each question in one line, so that a misreading can be recognised.
3. Access to 5 to 10 people per round who resemble the survey population, including people the screener should exclude.
4. An interviewer who knows questionnaire design and can listen without correcting, a quiet place or call, and a recorder or note-taker.
5. Time: Willis counts at least three hours of total work per one-hour interview and advises no more than three interviews a day per interviewer.

## Procedure
1. Appraise the draft first. Check every question against S3-01 and against the four stages: Will they understand it as intended? Can they remember this? Will they want to answer honestly? Does their answer fit an offered option? List suspected problems; these become probes.
2. Choose the technique. Think-aloud: the participant says what they are thinking while answering; the interviewer only says "tell me what you are thinking". It adds little interviewer bias and can show unexpected problems, but many people find it hard, drift off topic, and thinking aloud may change how they answer. Verbal probing: after an answer the interviewer asks targeted questions. It keeps the interview on the points that matter, but leading probes can bias answers. Willis recommends probing as the main tool, combined with think-aloud where a participant does it naturally.
3. Write scripted probes for each suspect question, using Willis's types: comprehension ("What does the word ... mean to you?"), paraphrase ("Say this question in your own words"), confidence ("How sure are you of that answer?"), recall ("How did you work out that number?"), specific ("Why did you choose that option?") and general ("How did you get to that answer? Was it easy or hard?"). Keep probes neutral; if you offer interpretations, offer all the reasonable ones. Leave room for spontaneous probes when something unexpected appears; Willis advises using both kinds.
4. Decide when to probe. Concurrent probing, right after each question, is the usual choice because the thinking is fresh. Retrospective probing, after the whole questionnaire, suits self-completed forms and near-final versions, because it leaves the answering undisturbed, with the risk that people no longer remember and invent an explanation. Working rule for a bot: the participant completes it on their own phone while the interviewer watches; probe the flagged questions after each block, the rest at the end.
5. Recruit by quota, not at random. Aim for variety on what could change understanding: language, age, education, city or region, user and non-user. Willis also tests screening questions on people who lack the screened characteristic. Sizes found in the sources: 5 to 10 people per round in Willis's guide, with a review of findings after 12 to 15 at most; Willis and Artino describe projects of 10 to 30 in total and say 5 or 6 can still be useful in a small project. More interviews find more problems.
6. Open each interview by explaining that the questions are being tested, not the person, that criticism helps, and that there are no wrong answers. Practise thinking aloud on one easy question. Plan about one hour.
7. Run it. Read or show each question exactly as drafted. Do not explain, reword or help toward an answerable response; the interviewer's job here is to expose flaws, not to work around them. Note hesitation, re-reading, questions back, answers that do not fit the options, and wrong routing.
8. Write up the same day, question by question: what happened, the suspected stage (comprehension, recall, judgement, response) or a structural fault such as a wrong skip, and the evidence in the participant's words.
9. Analyse across interviews. Put the notes for each question side by side. Look for repeated problems and for single serious ones: Willis's position is that one interview can be enough to establish a finding if the problem would damage the data. Judge whether a problem comes from the question or from an unusual participant. Do not report percentages.
10. Decide per question: keep, reword, split, add a definition or an option, change the period or unit, or delete. Willis shows a case where the right outcome of testing was to drop the question. Hold a review meeting with the questionnaire's author and, if possible, the client.
11. Test again after changes. Willis describes three to four rounds as typical, early ones on concepts and later ones on wording and format; Krosnick and Presser also advise retesting after significant revision. Working rule: at least one more round on every reworded question, and stop when a round produces no change that affects meaning.
12. Record the purpose, who was interviewed and how recruited, the number of participants and interviewers, the protocol, and the findings and changes per question. Keep pretest answers out of the survey dataset. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a flour mill's Telegram bot survey for bakers, Uzbek version, 14 questions. Round 1: 6 bakers (3 Tashkent, 3 from regions), concurrent probing on 4 flagged questions.

```
Q5 DRAFT: "Oxirgi oyda qancha un sotib oldingiz?  (kg)"
PROBES: "'Oxirgi oy' deganda qaysi kunlarni tushundingiz?"   comprehension
        "Bu raqamni qanday hisobladingiz?"                    recall
FINDINGS (FACT)
  Period: 3 of 6 took it as the previous calendar month, 3 as the last 30 days.
  Unit: 4 of 6 answered in sacks ("qop") and then tried to convert; 2 answered in kg.
  P4: "Qopda aytsam bo'ladimi? Kilosini bilmayman."
DIAGNOSIS (INTERPRETATION)  comprehension (period unclear) + response (unit not theirs)
REVISION: "Oxirgi 7 kunda necha qop un sotib oldingiz?" + next: "Bir qop necha kilo?"
ROUND 1 RESULT: 14 questions -> 9 kept, 4 reworded, 1 deleted = 13 questions.
ROUND 2: 5 new bakers on the 13 questions; no change affecting meaning -> stop.
Workload: (6 + 5) interviews x 3 hours = 33 hours.
```
Arithmetic check: 3 + 3 = 6; 4 + 2 = 6; 9 + 4 + 1 = 14; 14 - 1 = 13; 6 + 5 = 11 interviews; 11 x 3 = 33 hours.

## Common mistakes
- Explaining the question to the participant, so the flaw disappears from view.
- Leading probes ("You understood that as last month, right?").
- Testing with colleagues or the client's staff, who know the jargon.
- Reporting "4 of 6 misunderstood" as a rate for the market.
- Testing only one language version, or only on paper when the survey runs in a bot.
- Fixing a question and launching without testing the new wording.
- Treating a clean pretest as proof that the survey data will be valid.
- Counting pretest participants as survey respondents.

## Quality checklist
- Was a desk review (S3-01) done and turned into probes before interviewing?
- Do participants resemble the survey population and vary on language, place and experience?
- Was each version tested in the mode and language it will be fielded in?
- Are probes neutral, and were questions presented exactly as drafted?
- Are findings written per question with evidence in the participant's own words?
- Is each problem assigned to a stage or to a structural fault, with a decision?
- Were reworded questions tested again?
- Does the note state the limits: small sample, wording only?

## Output template
```
COGNITIVE PRETEST NOTE - [project] - [date] - round [n]
Version tested: language ... | mode ... | questionnaire version ...
Participants: n ... | how recruited ... | mix: language / place / user-non-user / age
Technique: think-aloud / probing | concurrent / retrospective | interviewers: ...
Q no | Intent | Probes used | What happened [FACT, original language] | Stage: C / R / J / Resp / structural | Decision | New wording
Questions: kept ... | reworded ... | deleted ... | added ...
Next step: another round on ... / live pilot / launch
Limits: small purposive pretest; wording and logic only; no estimates.
```

## Works with
- S3-01 questionnaire design rules: the desk review before, and the rules for rewording after. S2-12 measure development: item wording for scales.
- S3-03 translation and back-translation: cognitive interviews are the pretest step for each language version.
- S1-08 surveys, S1-10 conjoint, S1-11 MaxDiff, S1-12 price research, S1-22 brand health tracking: instruments to pretest.
- S3-09 satisficing and data-quality checks: the live pilot and checks on collected data. S2-13 total survey error: where measurement error sits beside sampling error. S2-02 and S2-03: the sampling questions this method does not answer.
- S2-10 research ethics and consent: recording and consent for pretest participants.

## Notes for Uzbekistan
- Pretest the Uzbek and the Russian version separately, each with people who will answer in that language, and the Latin or Cyrillic form they will see. Record findings and quotes in the original language.
- Polite participants may say everything is clear. Ask them to paraphrase and to explain how they got the answer instead of asking whether the question is understandable.
- Include participants from outside Tashkent and with less education where the survey will reach them; everyday words for units, products and periods can differ.
- For a bot, test on the participant's own phone, and include at least one person less used to Telegram; note where buttons or long texts cause trouble. The bot's reach limits (older and rural people) are a sampling matter and stay unresolved here.
- The four-stage model and the guidance come from US survey practice. Willis and Artino note that a term may not carry the same meaning across countries; treat transfers as hypotheses and let local interviews decide.

## Sources
- Original: Willis, G. B. (2005). Cognitive Interviewing: A Tool for Improving Questionnaire Design. Sage. Paid book; not opened. Publisher page: https://collegepublishing.sagepub.com/products/225856
- Opened, free: Willis, G. B. (1999). Cognitive Interviewing: A "How To" Guide. Research Triangle Institute; short course at the 1999 American Statistical Association meeting. Read in full in an archive copy of a US government posting; no stable official URL was found, so none is given.
- Opened, open access: Willis, G. B., and Artino, A. R. (2013). What Do Our Respondents Think We're Asking? Using Cognitive Interviewing to Improve Medical Education Surveys. Journal of Graduate Medical Education, 5(3), 353-356. https://pmc.ncbi.nlm.nih.gov/articles/PMC3771159
- Opened: Rothgeb, J., Willis, G., and Forsyth, B. (2005). Questionnaire Pretesting Methods: Do Different Techniques and Different Organizations Produce Similar Results? U.S. Census Bureau, Survey Methodology 2005-02. https://www.census.gov/content/dam/Census/library/working-papers/2005/adrm/rsm2005-02.pdf
- Opened: Krosnick, J. A., and Presser, S. (2010). Question and Questionnaire Design, section on testing questionnaires. Author's Stanford page. https://web.stanford.edu/dept/communication/faculty/krosnick/docs/2010/2010%20Handbook%20of%20Survey%20Research.pdf
- Opened: Willis, G. B. (2009). Response paper on cognitive interviewing, CDC Q-Bank workshop. https://wwwn.cdc.gov/QBANK/QEM/Willis_CognitiveInterviewing_QEM_Response_Paper.pdf
- The bot probing rule and the stopping rule for rounds are working rules of this skill.
