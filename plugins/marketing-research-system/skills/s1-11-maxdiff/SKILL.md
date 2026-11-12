---
name: s1-11-maxdiff
description: Decides whether MaxDiff fits, designs the item sets, and scores best and worst picks into a ranking. Use when many benefits, messages or features must be put in order of importance.
---

# MaxDiff, best-worst scaling (S1-11)
In MaxDiff the respondent sees a small set of items (benefits, messages, features, claims) and picks the most and the least important or appealing one. This is repeated over several sets built by an experimental design. The picks give each item a score on one common scale. Jordan Louviere developed the method in the late 1980s; the first published application is Finn and Louviere (1992), and the reference text is Louviere, Flynn and Marley (2015), Best-Worst Scaling. The form covered here is the "object case" (case 1), where items are a plain list; two other cases use attribute levels and full profiles. Evidence grade: A, tested in peer-reviewed research. Because people must choose, the method avoids the rating-scale problem that everything is rated important and that people use scales differently. Its main limit is that scores are relative: they say which items matter more than others in this list, not whether any item matters in absolute terms.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (counts and scores, with sample) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- There is a list of roughly 8 to 25 comparable items (working range of this skill) and the team needs a clear order: which messages to lead with, which benefits to promise, which features to build first.
- Rating scales have given, or are likely to give, flat results where everything scores high.
- Groups (cities, customer types, languages) need to be compared without differences in how they use scales.
Do not use it when:
- The question is how features combine with price into a product. Use S1-10.
- An absolute answer is needed ("is this important enough to pay for?"). Add an anchor question (step 8) or use S1-12, S4-16.
- There are fewer than about 6 items; a simple ranking question is enough.
- Items are of different kinds (a price, a slogan and a delivery term in one list) or overlap in meaning.
- The list is not final. The Aberdeen tutorial notes that adding an item later means a new study.

## What you need before starting (inputs)
- The decision and the final item list, each item one idea, similar in length and level of detail.
- The question frame: most/least important when choosing a supplier, most/least appealing, most/least believable.
- A survey tool that can show sets from a design in several versions, and a respondent-level export.
- A sample source with at least 200 respondents, or 200 per subgroup to be compared (Sawtooth guidance).

## Procedure
1. Check fit. Ask the user: what will be decided, where the items came from, whether an order is enough or an absolute level is needed, and how many respondents can be reached. If the "do not use" list applies, say so and propose the other method.
2. Clean the item list. One idea per item; no item that includes another; none that nobody could reject or nobody could want; same grammatical form. Pretest wording with five to eight people (S3-02). Items should come from qualitative work or S9-02, not from a meeting alone.
3. Choose items per set. Sawtooth's manual advises four or five, never more than half of the list, and notes that more than about five adds little precision. On a phone screen prefer four.
4. Choose the number of sets. Each item should appear three to five times per respondent, so sets = at least 3 x K / k, where K is the number of items and k the items per set. Example from the manual: 20 items, 4 per set, at least 15 sets. Working rule: if this gives more than about 15 sets, shorten the list or ask the software for a sparse design, which needs a larger sample (each item seen at least 500 times in total, preferably 1,000).
5. Generate the design with software. Aims: every item shown equally often, pairs of items appearing together about equally often, positions rotated, and many questionnaire versions. A perfectly balanced block design exists only for some combinations of K, k and sets, so software searches for a near-balanced one. Do not assemble sets by hand.
6. Write the screen. One set per screen, the same question each time, two columns of buttons ("most" and "least"). Tell respondents at the start that items will repeat in different groups; otherwise they think the survey is broken.
7. Field and clean (S3-09): drop respondents who finish implausibly fast or always pick the same positions. Report the number removed.
8. Optional anchor. If the team needs to know which items clear an absolute bar, add a follow-up after each set ("are all of these important, none, or some?") or a direct question per item. Sawtooth's technical papers describe both forms; say which was used.
9. Score by counting. For each item: times picked best, times picked worst, times shown. Score = (best - worst) / times shown, from -1 to +1. Checks: total best picks = total worst picks = respondents x sets; the scores of a balanced design sum to zero. The published tutorials treat this difference score as an interval-level measure that gives sound results for the whole sample.
10. Go further only if needed. Scores per respondent from counts are imprecise with three showings per item. For segmentation or individual scores use a logit model with hierarchical Bayes in specialised software; then S4-11 or S4-12.
11. Compare groups. Compute scores per group and test differences on the best and worst counts (S4-10). Read only groups of about 200 or more.
12. Read the result. Report the full ordered list with scores, not only the top three. Items with close scores are tied for practical purposes. Say that the order holds within this list and this sample, and that the lowest item may still matter. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a flour mill wants to know which of 12 promises to put first in its offer to bakeries. Design: K = 12, k = 4, sets = 3 x 12 / 4 = 9; each item shown 3 times per respondent. n = 200 bakery owners and chief bakers, so each item is shown 200 x 3 = 600 times and there are 200 x 9 = 1,800 best and 1,800 worst picks.
Output:

| Item | Best | Worst | Score (B - W) / 600 |
|---|---|---|---|
| Same gluten level in every batch | 330 | 30 | +0.50 |
| Delivery within 24 hours | 270 | 60 | +0.35 |
| Payment 14 days after delivery | 240 | 90 | +0.25 |
| Price fixed for a month | 210 | 90 | +0.20 |
| Technologist visits the bakery | 150 | 120 | +0.05 |
| Laboratory certificate with each batch | 150 | 150 | 0.00 |
| 25 kg bags instead of 50 kg | 120 | 150 | -0.05 |
| Bonus for yearly volume | 90 | 180 | -0.15 |
| Ordering through a Telegram bot | 90 | 180 | -0.15 |
| Flour from local grain | 60 | 210 | -0.25 |
| New bag design | 60 | 240 | -0.30 |
| Mill working since the 1990s | 30 | 300 | -0.45 |

Check: best column sums to 1,800, worst column to 1,800, scores to 0. FACT: batch-to-batch consistency was picked as most important in 330 of 600 showings and least important in 30. INTERPRETATION: lead the offer with consistency and delivery speed; payment terms and price stability form a second tier; heritage and packaging are weak openers for this audience. Limit: the scores are relative. A certificate at 0.00 is mid-list, not unimportant, and may be a basic requirement; check with S4-16.

## Common mistakes
- Mixing items of different kinds or overlapping items, so the "winner" is just the broadest statement.
- Showing each item once or twice per respondent and then reporting individual scores.
- Building sets by hand, so some items meet weak neighbours more often than others.
- Reading scores as absolute ("customers do not care about X") or as percentages of buyers.
- Comparing scores between two studies with different lists.
- Reporting small groups; ignoring respondents who clicked through.

## Quality checklist
- Is each item one idea, of the same kind and similar length? (yes/no)
- Are items per set four or five and no more than half the list? (yes/no)
- Does each respondent see each item at least three times? (yes/no)
- Was the design generated by software with several versions? (yes/no)
- Do best and worst totals equal respondents x sets? (yes/no)
- Are there at least about 200 respondents per group reported? (yes/no)
- Is the full list reported and described as relative? (yes/no)

## Output template
```
MAXDIFF (S1-11)
Decision this serves:                    Decision owner:
Question frame (most / least ...):       Source of items:
Items (K):        Items per set (k):     Sets per respondent:      Showings per item per respondent:
Design tool and versions:                Anchor question used (none / dual response / direct):
Sample: source, n, groups, dates, languages, removed respondents (n, rule):

| Rank | Item | Best | Worst | Shown | Score (B - W) / Shown |

Checks: sum of best =        sum of worst =        respondents x sets =
Group differences (group, item, scores, test):                 (FACT)
Tiers and recommendation:                                      (INTERPRETATION)
Limits (relative scores, list-specific, sample):
Next step:
```

## Works with
- S1-04, S1-05, S1-15 and S9-02: produce the item list. S3-01 and S3-02: wording and pretest. S3-07 response styles: the problem MaxDiff avoids.
- S1-08 surveys: MaxDiff usually sits as one block inside a survey. S2-02 and S2-03: sample.
- S1-10 conjoint: when items must be traded against price. S4-16 Kano: tells whether a mid-ranked item is a basic requirement. S1-12: price questions.
- S4-10 tests between groups; S4-11 and S4-12 segmentation on individual scores; S5-09 needs-based segments.
- S6-02 positioning statement and S6-18 creative brief: use the top tier.

## Notes for Uzbekistan
- Translate the items into Uzbek and Russian with equal length and tone, and pretest both; a longer or more formal item can be picked for its style.
- MaxDiff suits a Telegram audience because it forces a choice and so limits the effect of polite, agreeing answers. Still, use four items per screen and no more than about 10 screens, and state that Telegram samples miss older and rural people.
- Compute Tashkent and regional scores separately before pooling.
- For B2B lists (bakers, cafe owners) 200 respondents may be hard to reach. With fewer, report only whole-sample counts and call the order provisional.
- The method was validated mostly on Western samples. Treat the transfer as a hypothesis and keep the anchor question when stakes are high.

## Sources
- Original: Louviere, J. J., Flynn, T. N., & Marley, A. A. J. (2015). Best-Worst Scaling, Theory, Methods and Applications. Cambridge University Press. Paid book. Not opened.
- First application, as cited in the overview below: Finn, A., & Louviere, J. J. (1992), an article in the Journal of Public Policy and Marketing. Not opened; volume and pages not verified.
- Opened: Mühlbacher, A. C., Kaczynski, A., Zweifel, P., & Johnson, F. R. (2016). Experimental measurement of preferences in health and healthcare using best-worst scaling, an overview. Health Economics Review, 6, 2. Open access. https://pmc.ncbi.nlm.nih.gov/articles/PMC4705077
- Opened: University of Aberdeen staff page, Introduction to best worst scaling approaches (tutorial slides on cases, block designs, count scores, limits). https://www.abdn.ac.uk/staffpages/uploads/s01nk3/Introduction_to_Best_Worst_Scaling_approaches.pdf
- Opened: Sawtooth Software, Lighthouse Studio manual, Designing a MaxDiff study. https://sawtoothsoftware.com/help/lighthouse-studio/manual/maxdiff-designing-study.html
- Opened: Sawtooth Software, MaxDiff technical papers page (advantages over ratings, estimation, anchoring). https://events.sawtoothsoftware.com/resources/technical-papers/maxdiff-best-worst-scaling
- Opened: Sawtooth Software, MaxDiff calculator and design guidelines (200 respondents). https://sawtoothsoftware.com/resources/maxdiff-calculator
- Note: dividing the best-minus-worst count by times shown is this skill's way of standardising the count score described in the tutorials.
