---
name: s3-08-common-method-bias
description: Plans design remedies and honest statistical checks for surveys where one respondent reports both the cause and the effect. Use before fieldwork and when reading driver results.
---

# Common method bias remedies (S3-08)

Common method bias is the distortion that arises when two things are measured in the same way, most often when the same person rates both the supposed cause and the supposed effect in one questionnaire. Part of the correlation between the two then comes from the shared method (the same person, mood, moment, scale and wording) and not from the things measured. The standard reference is the review by Philip Podsakoff, Scott MacKenzie, Jeong-Yeon Lee and Nathan Podsakoff (2003), which named the sources of the bias and set out procedural remedies (changes to design) and statistical remedies (checks in analysis). Podsakoff, MacKenzie and Podsakoff updated it in 2012, reviewing the evidence on how the bias affects measures and relationships and evaluating both kinds of remedy.

Evidence grade: A. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The existence of the bias and the logic of the design remedies rest on a large peer-reviewed literature. Two cautions apply. The statistical checks are much weaker than the design remedies, and the sources opened for this skill agree that none of them removes the bias. And in a single survey answered once by one person, the bias cannot be fully removed at all; it can be reduced and its likely size discussed.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (the design used, the correlations found) versus INTERPRETATION (how much of a relationship is real). Do not write "common method bias was ruled out". When the plan or the reading is delivered, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- A survey will be used to say that one rated thing drives another (service ratings and loyalty, image and intention to buy), and both come from the same respondent.
- A key driver or regression result (S4-14) is about to go into a recommendation.
- The team can still change the questionnaire or add a second data source.

Do not use it when:
- The survey only describes: shares, awareness, usage counts. The bias concerns relationships between measures, though single ratings can still be distorted (S3-06, S3-07).
- The cause is assigned by the researcher, as in an experiment (S1-09, S7-02). Random assignment deals with the problem by design.
- The outcome already comes from records such as sales or CRM data matched to the respondent.

## What you need before starting (inputs)
1. The list of predictor and outcome variables and the source of each (same respondent, another person, records).
2. The draft questionnaire with item order and scale formats (S3-01).
3. Whether respondents can be contacted twice and matched, and what was promised about anonymity (S2-10).
4. Any records the client holds: purchases, repeat orders, referrals, complaints.
5. Sample size (S2-03) and the analysis planned (S4-14, S4-13).

## Procedure
1. Map the risk. Make a table of each predictor-outcome pair with its source, time and scale format. Mark every pair where the same person rates both in the same sitting. Podsakoff and colleagues' four groups of sources, as summarised in an editorial opened for this skill, are the common rater, item characteristics, item context and measurement context. Risk is higher for abstract, perceptual measures: one review cited in the sources puts method variance at about 41% for attitude measures against about 23% for more concrete ones.
2. First choice: take the outcome from a different source. Use the client's records (did the customer reorder, refer, pay on time), or another informant. The journal editors who reviewed this problem rank it as the best remedy. Note the caveat from a later review: other raters and records carry their own errors.
3. Second choice: separate predictor and outcome in time. Ask the predictors in one wave and the outcome in a later one. A review of this literature reports gaps of up to about four weeks as typical and that the separation lowers same-source correlations noticeably; the gap should fit how fast the outcome can change. Costs are drop-out between waves and the need to match people.
4. If one sitting is the only option, apply the remaining procedural remedies together:
   - Proximal and psychological separation: place predictor and outcome items far apart with unrelated questions between them, and add a short bridging text or unrelated task so the two blocks do not look connected.
   - Different formats: different scale types, end-point labels or response modes for predictor and outcome.
   - Anonymity and reduced evaluation apprehension: say that answers are anonymous or confidential and that there are no right or wrong answers.
   - Better items and order: concrete, fact-based, unambiguous wording with unfamiliar terms defined and pretested (S3-02); randomise or counterbalance item order inside blocks; keep the questionnaire short. The 2012 review, as summarised in a secondary source, ties bias to respondents' lowered ability or motivation to answer accurately (S3-09).
5. Resolve the anonymity conflict. Matching waves or records needs an identifier, which the editors note is in tension with anonymity promises. Working rule: match on a code or bot user ID, promise confidentiality and not anonymity, and say so in the consent text.
6. Plan a marker variable before fieldwork if a statistical check is wanted: one short rating item, in the same format as the others, on a topic that theory says is unrelated to the study variables. A methods paper opened for this skill advises that a marker chosen after the fact is risky, and that concrete facts such as age make poor markers because they understate the bias.
7. After fieldwork, run the checks and name their limits. Harman's single-factor test (all items in one unrotated factor analysis). Often reported, with "one factor above 50% of variance" used as a rule of thumb, but the sources call it insensitive and say there is no accepted threshold. Passing it is not evidence of absence. Working rule: report it only alongside something stronger. Marker variable (Lindell and Whitney's approach): see whether the key relationships hold after controlling for the marker. Latent method factor in a confirmatory model: compare results with and without it; this needs a specialist and a large sample. None of these measures the bias directly, and the editors recommend using more than one remedy.
8. Read the result. Working rule: treat a same-sitting, same-format correlation as an upper bound on the real relationship. As an order of magnitude, a figure attributed to the 2003 review is an average predictor-outcome correlation of about .36 when both came from one source and about .18 when they came from different sources. That is an average across past studies, not a correction factor.
9. Report the remedies used, those not possible, the checks run and the remaining risk in plain words. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a Tashkent housing developer wants to know whether satisfaction with the sales manager drives willingness to recommend. Draft plan: one Telegram survey of buyers asking both on the same 5-point scale.

```
RISK MAP                                                                 FACT
Predictor: satisfaction with sales manager - buyer, wave 1, 5-point agree scale
Outcome:   would recommend - same buyer, same sitting, same scale -> HIGH RISK
REVISED DESIGN
Wave 1 (n = 250): satisfaction items, 5-point agree scale; unrelated block;
  marker item on an unrelated topic; "no right or wrong answers" text.
Wave 2, three weeks later, matched by bot user ID: recommendation on a
  0-10 scale. Matched respondents: 180 of 250 = 72%.
Records: referral codes used within 90 days, from the developer's CRM.
RESULTS                                                                  FACT
Same-sitting pilot (old design): r = 0.62 -> shared variance 0.62^2 = 38.4%
Wave 1 satisfaction with wave 2 recommendation: r = 0.41 -> 0.41^2 = 16.8%
Difference in r: 0.62 - 0.41 = 0.21
Harman test, wave 1 items: first factor 34% of variance (weak check only)
READING
The relationship holds with time and format separated but is weaker than
  the same-sitting figure; 0.62 overstated it.                  INTERPRETATION
Remaining risk: both measures still come from the buyer. Check whether
  satisfied buyers actually used referral codes (S4-08).
```
Arithmetic check: 180 / 250 = 0.72; 0.62 x 0.62 = 0.3844, or 38.4%; 0.41 x 0.41 = 0.1681, or 16.8%; 0.62 - 0.41 = 0.21.

## Common mistakes
- Reporting Harman's test as proof that there is no problem.
- Leaving the issue to the analysis stage, when the effective remedies are design choices.
- Promising anonymity and then matching respondents across waves or to records.
- Picking a marker variable after seeing the correlations.
- Presenting key driver weights from a single same-sitting survey as causal effects.

## Quality checklist
- Is there a table showing the source, time and format of every predictor and outcome?
- Was a different source or a later wave for the outcome considered and the decision recorded?
- Do predictor and outcome items differ in position and scale format?
- Does the introduction address confidentiality and "no right or wrong answers" truthfully?
- If a marker variable is used, was it chosen before fieldwork?
- Are statistical checks reported with their limits and not as proof?
- Does the report state the remaining risk in plain words?

## Output template
```
COMMON METHOD BIAS PLAN AND NOTE - [project] - [date]
RISK MAP: predictor | outcome | source of each | same sitting? | same format? | risk
DESIGN REMEDIES
Different source for outcome: used / not possible because ...
Time separation: gap ... | matching by ... | expected drop-out ...
Proximal / psychological separation: ... | Format differences: predictor scale ... | outcome scale ...
Confidentiality and no-right-answer text: ...
Item pretest: ... | Order randomised: y/n | Length: ... min | Marker item (chosen on [date]): ...
CHECKS AFTER FIELDWORK (FACT)
Check | result | limit of this check
READING (INTERPRETATION): ... | Remaining risk and next check: ...
```

## Works with
- S3-01 questionnaire design rules, S2-12 measure development and S3-02 cognitive interviewing: item wording, formats and pretest. S3-09 satisficing and data-quality checks: low effort is one route to shared bias.
- S3-06 indirect questioning and S3-07 response styles across cultures: social desirability and agreeing habits are specific sources of shared method variance.
- S1-08 surveys and S1-22 brand health tracking: where the problem arises. S2-13 total survey error: the wider error frame. S2-10 research ethics and consent: confidentiality wording when matching.
- S4-14 key driver analysis, S4-15 importance-performance analysis, S4-13 factor analysis, S4-20 Net Promoter Score: analyses whose results this bias inflates.
- S2-07 triangulation, S1-23 prefer behaviour over stated reasons, S4-08 say-do analysis: outcomes from another source. S1-09 experiments and S7-02 controlled tests: the design that avoids the problem. S1-01 research design types: whether a causal claim is being made at all.

## Notes for Uzbekistan
- If the survey runs in Uzbek and Russian, analyse relationships inside each language group first. Agreeing habits that differ by language (S3-07) add shared variance of their own.
- Polite or agreeing answers raise all ratings together, which is exactly the pattern that inflates driver results; measure it before trusting a correlation.
- Many clients keep order and referral data in spreadsheets or a CRM. Ask for it early; a matched record is the strongest remedy available to a small agency.
- A Telegram bot makes a second wave cheap because the user ID allows matching, but the sample misses older and rural people, and second-wave drop-out may differ between Tashkent and the regions.
- The reviews behind this skill draw mainly on Western organisational and marketing studies. The typical size of the bias here is unknown; treat the published magnitudes as hypotheses.

## Sources
- Original: Podsakoff, P. M., MacKenzie, S. B., Lee, J.-Y., & Podsakoff, N. P. (2003). Common method biases in behavioral research: A critical review of the literature and recommended remedies. Journal of Applied Psychology, 88(5), 879-903. https://doi.org/10.1037/0021-9010.88.5.879 Paid; not opened. Its content is reported here through the secondary sources below.
- Original: Podsakoff, P. M., MacKenzie, S. B., & Podsakoff, N. P. (2012). Sources of method bias in social science research and recommendations on how to control it. Annual Review of Psychology, 63, 539-569. https://doi.org/10.1146/annurev-psych-120710-100452 Full text not opened; abstract read on the authors' university record: https://experts.arizona.edu/en/publications/sources-of-method-bias-in-social-science-research-and-recommendat/
- Opened, co-author's own site: Chang, S.-J., van Witteloostuijn, A., & Eden, L. (2010). From the editors: Common method variance in international business research. Journal of International Business Studies, 41, 178-184. https://www.voxprof.com/eden/Publications/Eden-CMV-IB.pdf
- Opened, university repository: Cooper, B., Eva, N., Fazlelahi, F. Z., Newman, A., Lee, A., & Obschonka, M. (2020). Addressing common method variance and endogeneity in vocational behavior research. Journal of Vocational Behavior, article 103472. https://ore.exeter.ac.uk/rest/bitstreams/166352/retrieve
- Opened, university repository: Gorrell, G., Ford, N., Madden, A., Holdridge, P., & Eaglestone, B. (2011). Countering method bias in questionnaire-based user studies. Journal of Documentation, 67(3), 507-524. https://eprints.whiterose.ac.uk/id/eprint/43123/2/WRRO_43123.pdf
- Opened, company blog (used only for the 2012 review's point on ability and motivation): de Vries, I. (2015). Tips for reducing common method bias. Prolific. https://www.prolific.com/resources/tips-for-reducing-common-method-bias
