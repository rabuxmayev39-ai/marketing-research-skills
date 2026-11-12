---
name: s4-16-kano-model
description: Classifies product features as must-be, one-dimensional, attractive, indifferent or reverse from paired survey questions. Use when deciding which features to build, keep or drop.
---

# Kano model (S4-16)
The Kano model sorts product or service features by how they affect satisfaction. Some features are simply expected (their absence angers, their presence earns nothing), some please in proportion to how well they are delivered, and some delight although nobody asked for them. Noriaki Kano and colleagues published the idea in 1984; a group of practitioners led by Charles Berger described the questionnaire, the evaluation table and the Better and Worse coefficients in 1993, and Matzler and Hinterhuber (1998) showed how to use the results in product development. Evidence grade: B, an established professional standard. The procedure is widely used and documented, but the question wording and the classification rules have known weaknesses and several rival versions exist. Use the results to order features and to start discussion, and confirm important decisions with other evidence.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (counts from the data) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- The team has a list of concrete features or service elements and must decide which to build, keep, improve or drop.
- Respondents can imagine each feature being present and absent.
Do not use it when:
- The question is how much people would pay, or how features trade off against price. Kano looks at one feature at a time.
- Features are vague ("quality", "good service"). Make them concrete first.
- The list is long. Every feature needs two questions; this skill's working rule is at most about 15 features per respondent.

## What you need before starting (inputs)
- A feature list where each item is one concrete thing, described the same way to everyone (a picture helps).
- A survey with a question pair per feature, and optionally a stated importance question per feature. A respondent-level file in Excel or Google Sheets: one row per respondent, two columns per feature (functional answer, dysfunctional answer), coded 1 to 5.
- Any grouping variable needed (customer type, city), because mixed groups can blur the result.

## Procedure
1. Write the question pairs. For each feature ask a functional question ("If the product has X, how do you feel?") and a dysfunctional question ("If the product does not have X, how do you feel?"). Both use the same five answers: 1 I like it; 2 It must be that way (I expect it); 3 I am neutral; 4 I can live with it; 5 I dislike it. The answers are not a ladder from good to bad, so do not average them.
2. Pre-test the wording with five to eight people. Published critiques report that respondents confuse "must be" with "like" and take time over "can live with it". Adjust the translation until testers can explain each answer in their own words.
3. Classify each respondent's answer pair with the evaluation table (rows are the functional answer, columns the dysfunctional answer):

   | Functional \ Dysfunctional | 1 Like | 2 Must-be | 3 Neutral | 4 Live with | 5 Dislike |
   |---|---|---|---|---|---|
   | 1 Like | Q | A | A | A | O |
   | 2 Must-be | R | I | I | I | M |
   | 3 Neutral | R | I | I | I | M |
   | 4 Live with | R | I | I | I | M |
   | 5 Dislike | R | R | R | R | Q |

   M must-be; O one-dimensional (also called performance); A attractive; I indifferent; R reverse (the person prefers not to have it); Q questionable (contradictory answers). One published variant also treats 2-2 and 4-4 as questionable; say which table you used.
4. Do it in a spreadsheet. Type the 5 by 5 table of letters on a sheet named Table in cells B2:F6. If the functional answer is in C2 and the dysfunctional answer in D2, the category is `=INDEX(Table!$B$2:$F$6, C2, D2)`. Copy down. Count each category per feature with `=COUNTIF(E:E,"A")` and so on, then turn counts into percentages.
5. Assign the feature's category. Start with the most frequent category. Then apply these rules, which are practitioner conventions reported in the Kano literature rather than tested laws:
   - If A + O + M is larger than I + R + Q, take the largest of A, O and M; otherwise the largest of I, R and Q.
   - If two categories are tied or nearly tied, give priority in the order M, then O, then A, then I.
   - Category strength is the gap between the first and second category; a commonly cited minimum is 5 percentage points. Below that, report the feature as "mixed" with both letters. Total strength is A + O + M; a commonly cited threshold for a feature that matters is more than 50%.
   - A high R share means some people want the opposite; a Q share above a few percent (working rule: 5%) means the question was misunderstood.
6. Compute the satisfaction coefficients (leave R and Q out):
   - Better = (A + O) / (A + O + M + I). Ranges 0 to 1. Close to 1: having the feature raises satisfaction for most people.
   - Worse = -(O + M) / (A + O + M + I). Ranges -1 to 0. Close to -1: lacking the feature causes dissatisfaction for most people.
   Plot features on a scatter chart with Worse (as a positive number) on one axis and Better on the other. This keeps information that the single letter throws away.
7. Check groups. Repeat steps 4 to 6 for the main customer groups. A feature that is "mixed" overall is often must-be for one group and indifferent for another. Use S4-10 to test whether the difference is larger than chance.
8. Translate into decisions (the usual reading in the Kano literature, to be treated as INTERPRETATION):
   - Must-be: deliver reliably; doing more than enough earns little. A missing must-be is the first thing to fix.
   - One-dimensional: compete here; better delivery brings more satisfaction. Attractive: pick a few as differentiators; their absence does not hurt.
   - Indifferent: do not invest, unless there is a non-customer reason (law, trade partners). Reverse: remove, or offer as an option.
   Within a category, order features by the coefficients and by stated importance if it was asked.
9. State the limits. Categories describe today's customers: Kano's later work describes features moving over time, from attractive towards must-be. Answers are about imagined features, not behaviour. Report the sample, the date and who was missing.
10. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand asked 100 buyers through a Telegram bot about three ideas for its one-litre carton.

| Feature | A | O | M | I | R | Q | Category | Better | Worse |
|---|---|---|---|---|---|---|---|---|---|
| Resealable cap | 18 | 30 | 38 | 10 | 2 | 2 | M (strength 8 points) | 0.50 | -0.71 |
| 200 ml pack with straw | 46 | 20 | 8 | 22 | 2 | 2 | A (strength 24 points) | 0.69 | -0.29 |
| QR code with orchard story | 14 | 4 | 2 | 70 | 6 | 4 | I (strength 56 points) | 0.20 | -0.07 |

Output: Check for the cap: Better = (18 + 30) / 96 = 0.50; Worse = -(30 + 38) / 96 = -0.71. FACT: the cap is must-be for 38% and one-dimensional for 30%; total strength 86%. INTERPRETATION: a carton without a cap risks dissatisfaction; treat the cap as required, not as an advertising claim. FACT: the small pack is attractive for 46%, with the highest Better score. INTERPRETATION: a candidate differentiator, worth a price and distribution test. FACT: the QR code is indifferent for 70%; total strength 20%. INTERPRETATION: no evidence that it adds satisfaction; do not fund it on this basis. Limit: a Telegram sample of 100 leaves out older and rural buyers.

## Common mistakes
- Asking only the functional question, or changing the five answers. Averaging the 1 to 5 codes as if they were a rating scale.
- Reporting one letter per feature and hiding a split such as 38% M and 30% O.
- Ignoring R and Q shares, which signal a wrong assumption or a badly worded question.
- Describing features vaguely, or treating the categories as permanent or as proof of what people will buy.

## Quality checklist
- Does every feature have both questions with the same five answers? (yes/no)
- Was the wording pre-tested in each survey language? (yes/no)
- Is the evaluation table version stated? (yes/no)
- Are full percentage distributions shown, not only the letter? (yes/no)
- Are category strength, total strength and the Better and Worse coefficients (without R and Q) reported? (yes/no)
- Were the main customer groups checked separately? (yes/no)
- Are the sample, date and missing groups stated? (yes/no)

## Output template
```
KANO ANALYSIS (S4-16)
Decision this serves:                     Decision owner:
Who answered (n, dates, how recruited):   Languages of the survey:
Evaluation table version:                 Features tested:

| Feature | A% | O% | M% | I% | R% | Q% | Category | Category strength | Total strength | Better | Worse |

Mixed or disputed features (two letters, and which groups differ):
Features with high R or Q (and what it suggests):
Recommended action per feature (deliver / compete / differentiate / do not invest / remove), marked FACT or INTERPRETATION:
Limits (sample, imagined features, date):
Next research step:
```

## Works with
- S3-01 questionnaire design and S1-08 surveys: write and field the question pairs; S3-07 response styles: spot respondents who give one answer throughout.
- S4-10 crosstabs and tests: compare categories between groups.
- S4-15 importance-performance analysis: Kano explains why a low-importance attribute may still be a basic requirement. S4-14 key driver analysis: a check on which features relate to overall satisfaction in real ratings.
- S6-02 positioning statement: attractive and one-dimensional features are candidates for the offer's reasons to believe.

## Notes for Uzbekistan
- The five answers are hard to translate. Test the Uzbek and Russian versions separately; make sure "it must be that way" and "I like it" are clearly different to respondents, and keep the final wording on file.
- Polite or agreeing answer habits can inflate "I like it" on the functional question. Watch the Q share and the share answering "like" to everything.
- In a Telegram bot, show one question per screen with answer buttons and a picture of the feature; long paired lists cause drop-out.
- Compare Tashkent and regional respondents before pooling; what is expected in one place may be new in another. The model was developed in Japan and mostly tested elsewhere. Treat the action rules for each category as hypotheses here.

## Sources
- Original: Kano, N., Seraku, N., Takahashi, F., & Tsuji, S. (1984). Attractive quality and must-be quality. Journal of the Japanese Society for Quality Control, 14(2), 39-48. In Japanese. Not opened.
- Berger, C., and colleagues (1993). Kano's methods for understanding customer-defined quality. Center for Quality of Management Journal, 2(4), 3-35. Not opened directly; the evaluation table, the answer options and the coefficients are taken from the pages below that reproduce or cite it.
- Matzler, K., & Hinterhuber, H. H. (1998). How to make product development projects more successful by integrating Kano's model of customer satisfaction into quality function deployment. Technovation, 18(1), 25-38. Paid. Not opened.
- Opened: Farace, V., & Swenson, M. (1998). Assessing customer requirements, the Kano method. Quirk's. https://www.quirks.com/articles/assessing-customer-requirements-the-kano-method
- Opened: Song, H.-G., & Kim, G.-P. (2017). Managing quality attributes using customer satisfaction coefficient. Journal of Korea Safety Management and Science, 19(1), 157-167. https://koreascience.kr/article/JAKO201724854344014.pdf
- Opened: Stocker, B., & Nasseri, A. (2020). PRCA for categorizing service components. Archives of Data Science, Series A, 6(2), KIT. https://publikationen.bibliothek.kit.edu/1000133326/115160860
- Opened: Zacarias, D., The complete guide to the Kano model (practitioner guide citing the 1993 CQM papers). https://foldingburritos.com/kano-model/
- Opened: Dhondt, M., The Kano model in a nutshell (evaluation table in text form). https://kanomodel.substack.com/p/the-kano-model-in-a-nutshell
- Opened: SEEBURGER blog, How can you interpret your Kano results (classification rules and strength measures). https://blog.seeburger.com/?p=10405 Also opened: MetricGate documentation, Kano model feature categorization (Better and Worse formulas). https://metricgate.com/docs/kano-model-feature-categorization/
