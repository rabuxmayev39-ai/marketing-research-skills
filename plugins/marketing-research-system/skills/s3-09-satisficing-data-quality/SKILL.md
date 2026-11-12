---
name: s3-09-satisficing-data-quality
description: Limits and detects survey shortcut answers with design rules, attention checks and speed, straight-line and duplicate filters. Use when designing a survey or cleaning its data.
---

# Satisficing and data-quality checks (S3-09)

Satisficing is Jon Krosnick's (1991) name for what respondents do when a survey asks more effort than they are willing or able to give. A careful answer needs four mental steps: understand the question, retrieve relevant information, form a judgement, and map it onto the answer options. Doing all four well is optimizing. Weak satisficing means doing the steps superficially, for example taking the first option that roughly fits. Strong satisficing means skipping steps: "don't know", the same answer down a whole grid (straight-lining, also called non-differentiation), or an answer picked at random, which Krosnick called mental coin flipping. Agreeing with statements whatever they say (acquiescence) is listed among the satisficing forms too. Three things raise the risk: a difficult task, low respondent ability and low motivation. A later line of work on careless or insufficient-effort responding (Meade and Craig 2012; Huang and colleagues 2012; Curran 2016) supplies the detection tools used here.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The theory and the detection indices have been tested many times, so the checks deserve to be run on every survey. The cutoffs are a different matter: a 2024 open-access paper that surveys the indicators states there is no consensus on the best cutoff for any indicator or on how to combine them. Treat every threshold below as a setting to declare and report, not as a proven line between honest and dishonest people.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (durations, run lengths, counts flagged and removed) versus INTERPRETATION (the judgement that a respondent was not answering seriously). Never delete rows; flag them in new columns and keep the raw file. When the cleaning note is delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A questionnaire is being drafted and can still be shortened or simplified (prevention is worth more than cleaning).
- A self-completed survey (web, Telegram bot, paper) has come back and must be cleaned before analysis.
- A panel or incentive was used; an experiment in Survey Research Methods found that incentivised respondents failed checks far more often than volunteers.

Do not use it when:
- The data are qualitative interviews; judge data quality there with S1-04 and S2-08.
- The aim is to detect interviewer fraud in face-to-face fieldwork; that needs back-checks and field control, which this skill does not cover.
- Someone wants filters tuned until a result looks better. Rules are set before the results are seen (S2-11).

## What you need before starting (inputs)
1. The questionnaire, with the number of questions, the grids (blocks of items on one scale) and any reverse-worded items (S3-01).
2. The raw export with a start and end time per respondent, a respondent identifier (Telegram user ID, panel ID or phone), and one column per answer.
3. Where the sample came from and whether an incentive was paid (S2-02).
4. The pretest results, including how long careful test respondents took (S3-02).
5. The two or three key results the client's decision rests on, for the sensitivity check.

## Procedure
1. Prevent first. Use the three conditions as a design checklist. Task difficulty: cut questions, shorten wording, avoid long grids and long unlabelled scales, which open-access summaries of the theory name as triggers. Motivation: explain why the answers matter and keep the survey short, because motivation falls as a survey goes on. Ability: plain words, tested in S3-02. One study cited in the careless-responding literature estimated that an online questionnaire should stay under about 176 items to keep serious carelessness low; working rule for a Telegram or mobile survey: far shorter, aim for under 10 minutes and state the real length on the first screen.
2. Reduce the easy shortcuts. Working rules: prefer questions with specific answer options over agree-disagree statements where possible (acquiescence); randomise the order of answer lists that have no natural order (first-option effects); split grids so that no block has more than about 10 items; offer "don't know" only where not knowing is a real answer.
3. Add attention checks sparingly. Types in the literature: an instructed item ("for this row choose 'agree'"), a bogus or infrequency item nobody should endorse, and an instruction check hidden in a longer text. Berinsky and colleagues (2019) found that one check measures attention with error and that four did nearly as well as eight; working rule for a short commercial survey: one or two instructed items placed inside grids. Keep them polite and unambiguous: published work reports that some respondents find checks insulting and that even diligent people sometimes endorse bogus items.
4. Fix the cleaning rules before fieldwork ends and write them down: which flags, which cutoffs, and how many flags lead to removal.
5. Flag duplicates. Same identifier: =IF(COUNTIF($B$2:$B$401,B2)>1,1,0). Identical answer rows: build a key with =TEXTJOIN("|",FALSE,F2:AA2) in column AC, then =IF(SUMPRODUCT(--($AC$2:$AC$401=AC2))>1,1,0). Working rule: for a repeated identifier keep the first complete row; treat identical answer rows as a flag only, since short surveys produce honest coincidences.
6. Flag speed. Duration in seconds from start (C) and end (D) times: =(D2-C2)*86400. Per item: =E2/number_of_items. Two cutoffs are in use. Absolute: under about 2 seconds per item, a value attributed to Huang and colleagues (2012) and designed for closed rating items. Relative: a share of the sample's typical time, which published work recommends recalibrating for each study; working rule: under half the median, =IF(E2<0.5*MEDIAN($E$2:$E$401),1,0). Report which was used. Speed says nothing about open text answers.
7. Flag straight-lining per grid. Whole grid identical: =IF(MAX(F2:O2)=MIN(F2:O2),1,0). Longest identical run (Excel 365 or Google Sheets): =MAX(SCAN(0,SEQUENCE(1,COLUMNS(F2:O2)),LAMBDA(a,i,IF(i=1,1,IF(INDEX(F2:O2,1,i)=INDEX(F2:O2,1,i-1),a+1,1))))). In older Excel use helper cells: Q2 is 1, R2 is =IF(G2=F2,Q2+1,1) copied across, then =MAX(Q2:Z2). No cutoff is agreed; Huang and colleagues suggested values between 6 and 14 depending on the scale, and identical answers can be honest when a grid has no reverse-worded items. Working rule: flag only a full grid of 8 or more items, or a run that crosses a reverse-worded item.
8. Flag failed attention checks: =IF(P2=4,0,1) where 4 is the instructed answer. Also count "don't know" and skipped answers per respondent: =COUNTIF(F2:AA2,99)+COUNTBLANK(F2:AA2).
9. Combine before removing. Curran recommends several methods used in sequence, each catching what it detects best, with the process transparent and replicable; Meade and Craig recommend both direct checks and indirect indices. Working rule: remove duplicates first; then remove a respondent only with two or more independent flags, =SUM(AD2:AF2)>=2; keep one-flag cases and mark them.
10. Check who is being removed. Compare flagged and kept respondents on language, region, age, device and source. Berinsky, Margolis and Sances warn that if attention is related to demographics, dropping failures leaves a sample that over-represents attentive groups, and they advise reporting results for both.
11. Run the key results twice, on all valid unique respondents and on the cleaned set. If the conclusion changes, say so and show both.
12. Report: rules and date set, number flagged by each check, number removed and share of completes, profile of those removed, and both versions of the key results. As a reference only, reviews put careless responding near 10% of a typical sample (8 to 12% in one summary of Curran), with much higher rates in some samples. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a juice brand runs a Telegram-bot survey in Uzbek and Russian. 400 completes, 22 questions, one 10-item grid on a 5-point scale containing one instructed item. Rules were written before the export: speed under half the median; full 10-item straight line; failed instructed item; remove at two or more flags.

```
ONE ROW  start 14:02:10, end 14:03:25 -> (D2-C2)*86400 = 75 s; 75 / 22 = 3.4 s per item   FACT
         median = 240 s; cutoff = 0.5 x 240 = 120 s; 75 < 120 -> speed flag 1
DUPLICATES  4 Telegram IDs appear twice = 8 rows; keep first of each, remove 4 -> 396 unique
FLAGS among 396      speed 26 | straight-line 24 | attention check 48 | total flags 98        FACT
Flags per person     0: 330 | 1: 42 | 2: 16 | 3: 8      (330 + 42 + 16 + 8 = 396)
Removed (2 or more)  16 + 8 = 24
TOTAL REMOVED        4 + 24 = 28 of 400 = 7.0% | final n = 372
KEY RESULT "would buy" (top two answers)
  all unique: 226 / 396 = 57.1% | cleaned: 205 / 372 = 55.1% | difference 2.0 points
WHO WAS REMOVED      Uzbek-language version: 18 of 24 removed = 75.0%; 238 of 396 sample = 60.1%
Reading: conclusion unchanged, report both figures. Removal falls more on the Uzbek
  version; check its wording and length before blaming respondents.          INTERPRETATION
```
Arithmetic check: 4 x 2 = 8; 400 - 4 = 396; 42 x 1 + 16 x 2 + 8 x 3 = 42 + 32 + 24 = 98 = 26 + 24 + 48; 28 / 400 = 0.070; 400 - 28 = 372; 226 - 205 = 21 removed "would buy" of 24; 226 / 396 = 0.5707; 205 / 372 = 0.5511; 18 / 24 = 0.750; 238 / 396 = 0.6010.

## Common mistakes
- Cleaning hard and designing carelessly: a 40-question bot survey with three long grids produces the problem the filters then chase.
- Removing on one flag. A fast reader, a person with a truly uniform opinion or someone who misread a check is not a careless respondent.
- Choosing cutoffs after looking at which respondents hold the "wrong" opinion.
- Deleting rows from the only copy of the file, or not saying how many were removed.
- Copying a cutoff from another study; time cutoffs built for rating items do not transfer to other formats.
- Trusting attention checks alone; experienced panel members learn to pass them and still answer carelessly.
- Ignoring who is removed, so the cleaned sample quietly loses one language or region.

## Quality checklist
- Was the questionnaire shortened and simplified before any filter was planned?
- Were flags, cutoffs and the removal rule written down before results were seen?
- Is each cutoff labelled as sourced or as a working rule?
- Are raw data intact, with flags in separate columns?
- Does removal need at least two independent flags (duplicates aside)?
- Is the number removed, by reason and as a share of completes, in the report?
- Were removed and kept respondents compared on language, region and source?
- Are the key results shown with and without the removed respondents?

## Output template
```
DATA-QUALITY NOTE - [project] - [date] | Rules set on [date], before / after results seen
Survey: [n questions] | grids: ... | attention checks: ... | median duration: ... s
Prevention done: length ... | wording pretest ... | randomised lists ... | grids split ...
FLAG RULES  duplicate: ... | speed: ... (sourced / working rule) | straight-line: ... | check: ...
Removal rule: ...
COUNTS  completes ... | duplicates removed ... | flagged speed ... / straight-line ... / check ...
        flags per person 0: ... 1: ... 2: ... 3: ... | removed ... = ...% | final n ...
Who was removed (language / region / source vs kept): ...
Key result 1: all ...% | cleaned ...% | conclusion changes? y/n
Limits: filters can remove honest respondents; thresholds are not validated for this population.
```

## Works with
- S3-01 questionnaire design rules and S3-02 cognitive interviewing: prevention, the first line of defence. S3-03 translation: when one language version is flagged more.
- S3-07 response styles across cultures: separates habitual agreeing or extreme answering from carelessness. S3-08 common method bias remedies: shares design fixes.
- S1-08 surveys, S1-10 conjoint, S1-11 MaxDiff, S1-12 price research, S1-22 brand tracking: methods whose data are cleaned here.
- S2-13 total survey error: where this error source sits. S2-11 write expectations down: cleaning rules fixed in advance. S2-03 sample size: plan extra completes for expected removals.
- S4-10 crosstabs and later analysis: run on the cleaned file with the sensitivity check.

## Notes for Uzbekistan
- Run the checks separately for the Uzbek and Russian versions; a version that is flagged more often may have a translation or length problem (S3-03).
- Polite or agreeing answer habits can look like acquiescence or straight-lining. Mixed-direction items and S3-07 help tell habit from carelessness; do not remove people for agreeing.
- Telegram-bot samples miss older and rural people before any cleaning; filters must not narrow the sample further without this being reported.
- Prize draws and paid channels attract repeat entries; store the Telegram user ID, never only a typed name, and tell respondents one entry per person.
- Slow mobile internet outside Tashkent lengthens durations, so slow completion is not a quality signal, and a median taken from Tashkent respondents should not set the cutoff for regions.
- The detection studies opened for this skill used Western, mostly online-panel samples. Their prevalence figures and cutoffs are hypotheses here.

## Sources
- Original: Krosnick, J. A. (1991). Response strategies for coping with the cognitive demands of attitude measures in surveys. Applied Cognitive Psychology, 5(3), 213-236. https://doi.org/10.1002/acp.2350050305 Paid; not opened. The theory was taken from the open-access summaries below.
- Meade, A. W., & Craig, S. B. (2012). Identifying careless responses in survey data. Psychological Methods, 17(3), 437-455. https://doi.org/10.1037/a0027085 Paid; not opened; used only as reported by the open papers below.
- Curran, P. G. (2016). Methods for the detection of carelessly invalid responses in survey data. Journal of Experimental Social Psychology, 66, 4-19. https://doi.org/10.1016/j.jesp.2015.07.006 Paid; only the publisher's abstract page was read.
- Opened, open access: Cornesse, C., & Blom, A. G. (2023). Response quality in nonprobability and probability-based online panels. Sociological Methods & Research, 52(2). https://journals.sagepub.com/doi/full/10.1177/0049124120914940
- Opened, open access: Kraemer and colleagues (2023), study of satisficing across six waves of an online panel, Survey Research Methods. https://ojs.ub.uni-konstanz.de/srm/article/view/7986/7218
- Opened, open access: Shamon and Berning (2020), split-ballot experiment on attention checks, Survey Research Methods. https://ojs.ub.uni-konstanz.de/srm/article/view/7374/6874
- Opened, open access: Ozaki, K. (2024). Detecting inattentive respondents by machine learning. Behavior Research Methods, 56(7), 7059-7078. https://link.springer.com/article/10.3758/s13428-024-02407-2
- Opened: Arias and colleagues (2020). A little garbage in, lots of garbage out. Behavior Research Methods, 52(6), 2489-2505. https://link.springer.com/article/10.3758/s13428-020-01401-8
- Opened, open access: Frontiers in Psychology (2021) article on insufficient effort responding. https://frontiersin.org/articles/10.3389/fpsyg.2021.784375/full
- Opened: Berinsky, A. J., Margolis, M. F., Sances, M. W., & Warshaw, C. (2019). Using screeners to measure respondent attention on self-administered surveys. Political Science Research and Methods. https://doi.org/10.1017/psrm.2019.53 Also the authors' summary of their 2014 study on the journal's blog: https://ajps.org/2015/03/16/methods-to-identify-inattentive-respondents/
- Opened: Yeung, R. C., & Fernandes, M. A. (2022). Machine learning to detect invalid text responses. Behavior Research Methods, 54(6), 3055-3070 (time cutoffs and recalibration). https://link.springer.com/article/10.3758/s13428-022-01801-y
- Opened: Welz and Alfons, When respondents don't care anymore (arXiv 2303.07167), for the 176-item estimate it reports from Bowling and colleagues (2021). https://arxiv.org/abs/2303.07167
