---
name: s4-15-importance-performance-analysis
description: Plots attributes by importance and performance on a four-quadrant grid to rank improvement priorities. Use when survey data rate several attributes of one offer.
---

# Importance-performance analysis (S4-15)
Importance-performance analysis (IPA) takes a list of attributes of a product or service, measures how important each is to customers and how well the company performs on it, and plots the two numbers on a grid with four quadrants. John Martilla and John James introduced it in the Journal of Marketing in 1977 as a cheap, easy-to-read way to decide where to spend improvement effort. Evidence grade: A, meaning the method has been tested in peer-reviewed research. Here "tested" cuts both ways: the grid is widely used, and the same research has shown real weaknesses (where to draw the lines, how to measure importance, and the assumption that every attribute works in a straight line). Use it as a first sorting tool and always report the checks in this skill next to the picture.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (a number from the data) or INTERPRETATION (your reading of it).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it
Use it when:
- Customers have rated the same offer on roughly 6 to 20 attributes, and the team must choose what to fix first.
- The audience wants one simple picture, and you can add a table of caveats.
Do not use it when:
- There is no performance rating from actual customers (people who have not used the offer cannot rate it).
- The goal is to compare brands (use S4-17) or to learn which features delight versus which are merely expected (use S4-16).
- Fewer than about 30 respondents rated the attributes. This threshold is this skill's working rule; below it report averages as indications only.

## What you need before starting (inputs)
- A respondent-level file (Excel or Google Sheets): one row per respondent, one column per attribute performance rating, all on the same scale.
- Either one column per attribute with a stated importance rating, or one overall satisfaction (or recommendation, or repurchase) rating per respondent. Ideally both.
- The attribute list and how it was chosen (interviews, sales team, earlier research).
- The decision the grid must inform and who owns it.

## Procedure
1. Check the attribute list. Each attribute must be one thing ("delivery on the promised date", not "delivery and service"), something customers experience, and something the company can change. Ask the user where the list came from. If it came only from managers, flag it.
2. Check the questionnaire. Martilla and James advised putting importance and performance questions in separate sections so that one answer does not colour the other. If they were asked side by side, note it as a limit.
3. Compute performance. For each attribute take the average: `=AVERAGE(B2:B121)`. Also record the count of answers and the share of low ratings, for example `=COUNTIF(B2:B121,"<=2")/COUNT(B2:B121)`. An average hides a minority of very unhappy customers.
4. Compute stated importance the same way from the importance columns. Expect all values to be high and close together: reviews of IPA note that directly rated importance tends to be uniformly high and discriminates poorly.
5. Compute derived importance if an overall rating exists. For each attribute: `=CORREL(performance column, overall satisfaction column)`. A higher correlation means that customers who rate this attribute higher are also more satisfied overall. Published IPA work also uses multiple regression (in Excel: Data Analysis, Regression; in Sheets: `LINEST`); when attributes are strongly correlated with each other, regression weights become unstable, so hand over to S4-14. Derived importance is an association, not proof of cause.
6. Choose where to draw the two dividing lines and state the choice. The literature describes two options: the scale midpoint (scale-centred) or the average of all attributes on each axis (data-centred). They can give different answers. Martilla and James treated line placement as a matter of judgement because the grid shows relative, not absolute, positions. Working rule for this skill: use the data averages as the main version, because ratings usually cluster at the top of the scale, and show in a note what changes with the midpoint.
7. Draw the grid. Insert a scatter chart with one point per attribute, one axis for importance and one for performance; label both axes clearly, because published versions differ on which is horizontal. Add the two dividing lines. Label the quadrants by their content:
   - High importance, low performance: concentrate here.
   - High importance, high performance: keep up the good work.
   - Low importance, low performance: low priority.
   - Low importance, high performance: possible overkill.
8. Add the gap table. For each attribute compute performance minus stated importance and sort. Later studies argue that a ranked list of gaps, or a diagonal line where importance equals performance, can be more useful than quadrants, and that an attribute sitting in "keep up the good work" can still have a negative gap. Report both views.
9. Compare stated and derived importance. Build a small table: attribute, stated rank, derived rank. Decision rules (working rules of this skill):
   - Stated high and derived high: genuine priority.
   - Stated high but derived low: likely a basic requirement that everyone names but that no longer separates satisfied from dissatisfied customers while it is delivered. Do not cut it.
   - Stated low but derived high: a hidden driver; check it in interviews before investing.
10. Apply the known criticisms before recommending.
    - Oh (2001) and later reviewers: importance is often mixed up with expectations, and IPA assumes attributes act independently and in a straight line, which is often untrue.
    - Matzler and colleagues (2004): the link between attribute performance and overall satisfaction is asymmetric. Under the three-factor view some attributes are basic (hurt when poor, add little when good), some are performance factors, and some are excitement factors. So "possible overkill" does not mean "safe to cut": if the attribute is basic, cutting it will hurt.
    - Any attribute within a small distance of a dividing line is unclassified. Working rule: treat differences smaller than about 0.2 scale points as "on the line".
11. Write the recommendation. For each attribute give: quadrant, gap, stated versus derived verdict, and the action (fix, maintain, check, leave). Never recommend reducing an attribute on the strength of the grid alone.
12. Report with the output template and return to "research-orchestrator".

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a furniture maker surveyed 120 hotel and restaurant clients on six attributes (1 to 5 scale), with stated importance, performance and overall satisfaction.

| Attribute | Importance | Performance | Gap | Correlation with overall satisfaction |
|---|---|---|---|---|
| Delivery on the promised date | 4.7 | 3.4 | -1.3 | 0.58 |
| Frame durability | 4.8 | 4.5 | -0.3 | 0.31 |
| Price | 4.6 | 3.9 | -0.7 | 0.22 |
| Custom sizes | 3.9 | 4.3 | +0.4 | 0.35 |
| Showroom | 3.2 | 4.1 | +0.9 | 0.12 |
| After-sales repair | 3.8 | 3.1 | -0.7 | 0.55 |

Dividing lines at the data averages: importance 4.17, performance 3.88 (FACT).

Output: Delivery is in "concentrate here" on stated importance and has the highest correlation (FACT). INTERPRETATION: first priority. After-sales repair falls in "low priority" on stated importance but has the second-highest correlation (FACT). INTERPRETATION: a hidden driver; confirm in five client calls before budgeting. Price is 0.02 above the performance line (FACT), so it is "on the line", not a strength. Showroom is in "possible overkill" (FACT). INTERPRETATION: do not expand it; do not close it on this evidence.

## Common mistakes
- Presenting the grid without saying where the lines were drawn and why.
- Reading "possible overkill" as an instruction to cut.
- Using only stated importance, where everything scores 4.5 or more.
- Treating a correlation as proof that improving the attribute will raise satisfaction.
- Mixing answers from customers and non-customers in the performance scores.
- Interpreting differences of a tenth of a point from a small sample.

## Quality checklist
- Is each attribute single, concrete and changeable? (yes/no)
- Is the number of respondents per attribute shown? (yes/no)
- Is the line placement stated, with the alternative checked? (yes/no)
- Are both stated and derived importance shown, or the absence of one explained? (yes/no)
- Is the gap table included next to the grid? (yes/no)
- Are attributes near a line marked as unclassified? (yes/no)
- Are the linearity and basic-factor caveats stated before any "cut" advice? (yes/no)

## Output template
```
IMPORTANCE-PERFORMANCE ANALYSIS (S4-15)
Decision this serves:                    Decision owner:
Offer rated:                             Who answered (n, dates, how recruited):
Scale:                                   Importance measure: stated / derived / both
Dividing lines: data average (I=   , P=   ) / scale midpoint (   )   Why:

| Attribute | n | Importance (stated) | Performance | Gap (P-I) | Derived importance (r) | Quadrant | Near a line? |

Stated versus derived: agreements and disagreements
What changes if the lines move to the other option:
Caveats (basic factors, small sample, question order):
Recommendation per attribute (fix / maintain / check / leave), each marked FACT or INTERPRETATION:
Next research step:
```

## Works with
- S1-08 surveys and S3-01 questionnaire design: supply the ratings; S3-07 response styles: check for people who give the same answer to everything.
- S4-10 crosstabs and tests: check whether quadrants differ between customer groups.
- S4-14 key driver analysis: a fuller way to get derived importance.
- S4-16 Kano model: tells which attributes are basic, performance or delight, which the grid cannot.
- S1-22 brand health tracking: repeat the same attributes over time.

## Notes for Uzbekistan
- Polite and agreeing answer habits push both importance and performance ratings to the top of the scale. Prefer data-average lines, and consider a ranking or a "choose the three most important" question for importance.
- Keep the attribute wording exactly as asked in Uzbek and in Russian; check that the two versions mean the same thing before pooling answers.
- Run the grid separately for Tashkent and the regions if the sample allows; delivery and service conditions can differ.
- Telegram-bot samples miss older and rural customers; say who is missing.
- The method and its critiques were developed mostly on Western samples. Treat the quadrant logic as a hypothesis to confirm with local interviews.

## Sources
- Original: Martilla, J. A., & James, J. C. (1977). Importance-performance analysis. Journal of Marketing, 41(1), 77-79. Paid. Not opened; described through the open-access papers below.
- Critiques named in the task: Oh, H. (2001), Revisiting importance-performance analysis, Tourism Management; Matzler, K., and colleagues (2004), The asymmetric relationship between attribute-level performance and overall customer satisfaction, Industrial Marketing Management. Both paid, not opened; their arguments are reported as summarised in the papers below.
- Opened: Lin, Z., & Vlachos, I., An advanced analytical framework for customer satisfaction with impact assessment (accepted manuscript, White Rose repository). https://eprints.whiterose.ac.uk/86337/1/EURAM-IPIA.accepted.ilias.2004.15.pdf
- Opened: the same paper in the Durham University repository. https://durham-repository.worktribe.com/OutputFile/1362845
- Opened: Abalo Pineiro, J., Varela Mallou, J., & Rial Boubeta, A. (2006). El analisis de importancia-valoracion aplicado a la gestion de servicios. Psicothema, 18(4), 730-737 (open access, in Spanish). https://www.psicothema.com/pdf/3301.pdf
