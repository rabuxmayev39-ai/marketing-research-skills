---
name: s4-11-cluster-analysis
description: Groups survey respondents into market segments with hierarchical and k-means clustering, then tests whether the segments are stable. Use when segments must come from survey data.
---

# Cluster analysis for market segmentation (S4-11)

Cluster analysis sorts respondents into groups so that people inside a group answered alike and people in different groups answered differently. In marketing the reference procedure comes from Punj and Stewart (1983, Journal of Marketing Research), who reviewed clustering in the field and are the usual citation for a two-stage route: a hierarchical method first to get a starting solution, then an iterative partitioning method (k-means) to refine it. Dolnicar, Gruen and Leisch (2018) built a ten-step segmentation process around it and added stability testing by repeated resampling. Evidence grade: A. The algorithms and the sample-size and stability findings are tested in peer-reviewed simulation research. One of those findings limits the weight to put on any solution: the Dolnicar team reports that consumer data rarely contain naturally separate segments, so an algorithm always returns groups, and the analyst must show that they repeat and that they are useful.

Working rules for the assistant: answer in the language the user writes in (Uzbek, Russian or English); label every statement as FACT (computed from the data) or INTERPRETATION; when the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- A decision depends on buyer differences and a survey measured needs, behaviour or benefits sought (S5-09 sets the decision).
- The segmentation variables are numeric or can be treated as numeric (ratings, counts, yes/no items).
- The sample is large enough for the number of variables (step 2).

Do not use it when:
- The sample is small. With a few dozen respondents, describe types qualitatively and call them hypotheses.
- The variables are mostly unordered categories (brand used, channel). Prefer latent class analysis (S4-12).
- The team already knows the grouping it wants (for example by purchase volume). That is a rule-based split and needs no algorithm.

## What you need before starting (inputs)

- The decision the segments must serve and who will use them.
- A cleaned data file, one row per respondent, with careless respondents removed (S3-09).
- A short list of segmentation variables (what defines segments) kept separate from descriptor variables (age, region, channel, used afterwards to describe segments).
- A tool. This method needs more than a spreadsheet. Free options: jamovi with the snowCluster module, or JASP (point-and-click); R (hclust, kmeans, package flexclust; the MSA package holds the book's data and demos); Python (scipy for hierarchical, scikit-learn for k-means). Sheets are fine for profiling the finished segments.

## Procedure

1. Confirm the decision and the variables. Ask: "Which decision will the segments feed, and which questions describe what people want or do?" Segment on needs and behaviour. Keep demographics as descriptors.

2. Check sample size against the number of variables. Sourced rule: Dolnicar and colleagues first recommended at least 70 respondents per segmentation variable (2014) and later, with more realistic data, 100 per variable (2016); the book repeats 100. So 8 variables need about 800 respondents. If the sample is short, cut variables; do not run and hope. Working rule of this skill: below 300 respondents treat any solution as a hypothesis.

3. Reduce and clean the variable list. Drop items nearly everyone answered the same way. Where two items say the same thing (correlation above about 0.8, working rule), keep one, otherwise that topic counts twice. Do not replace the items with factor scores before clustering: a simulation by Dolnicar and Gruen (2008) found factor-then-cluster usually did worse than clustering the raw items and never better.

4. Put variables on one scale. If they use different scales (a 1-5 rating next to monthly spend), standardise each to mean 0 and standard deviation 1, because larger-valued variables otherwise dominate the distance. If all are on the same rating scale, leave them. Check response styles (S3-07): a small segment that agrees with everything may be an answering habit, not a need.

5. Stage one, hierarchical. Compute Euclidean distances and run Ward's method (R: hclust(dist(x), method = "ward.D2"); Python: scipy.cluster.hierarchy.linkage(x, "ward")). Look at the tree (dendrogram) and note where merging starts to join very unlike groups. This suggests a range of segment numbers, for example 3 to 6. The book notes hierarchical methods suit samples up to a few hundred and that trees seldom give a clear answer for consumer data; with more than about 1,000 respondents run this stage on a random subsample.

6. Stage two, k-means. For each candidate number of segments k in the range, run k-means with many random starts and keep the best run, because a single start can stop at a poor solution (R: kmeans(x, k, nstart = 25) or flexclust stepcclust(x, k = 2:8, nrep = 10); Python: KMeans(n_clusters = k, n_init = 25)). Twenty-five starts is this skill's working default; the book's example uses 10. Using the hierarchical centres as starting points, as in the two-stage tradition, is an acceptable alternative.

7. Draw the scree plot: total within-segment sum of squares against k. A clear elbow suggests a number. Expect no clear elbow with real survey data; then rely on step 8.

8. Test stability, the main criterion. For each k: draw a bootstrap sample (same size, sampled with replacement), cluster it, assign all original respondents to the nearest centre, and repeat. Compare pairs of runs with the adjusted Rand index (1 means identical grouping, about 0 means chance agreement; Python: sklearn.metrics.adjusted_rand_score; R: flexclust bootFlexclust). Working rules of this skill: use at least 50 bootstrap pairs per k; prefer the k with the highest and tightest index; treat a median below about 0.6 as unstable. Decision rule from the Dolnicar and Leisch framework: if one k is clearly stable, segments are close to natural; if several are moderately stable, the structure is reproducible and the team chooses; if none is stable, any grouping is a construction and must be justified by usefulness alone. Say which case applies.

9. Check each segment. Working rule: a segment under 5 percent of the sample or under 30 respondents is too small to profile. List its mean on every segmentation variable against the total mean. Ask the user whether each segment makes sense and whether the company would treat it differently.

10. Profile and describe. Cross-tabulate segments against descriptors and outcome variables and test differences with S4-10 methods. Differences on the segmentation variables themselves are guaranteed by the method and prove nothing; differences on variables not used for clustering are the real validation.

11. Name segments by their defining need, report with the template, and hand over to S5-09. Return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data. Input: a furniture maker surveyed 900 recent sofa buyers. Eight importance ratings (1-5): price, delivery speed, custom size, fabric choice, durability, design, instalment payment, brand reputation. Rule check: 8 variables x 100 = 800 needed; 900 available.

| k | Scree drop from k-1 | Median adjusted Rand index (50 bootstrap pairs) | Smallest segment |
|---|---|---|---|
| 2 | large | 0.71 | 38% |
| 3 | medium | 0.83 | 24% |
| 4 | small | 0.52 | 9% |
| 5 | small | 0.41 | 4% |

Output: FACT: the three-segment solution was the most stable; segment A (41 percent) rated price and instalments highest, B (35 percent) custom size and fabric choice, C (24 percent) durability and brand. FACT: segments differed on a variable not used for clustering, share who visited a showroom (chi-square, p below 0.001). INTERPRETATION: reproducible structure with three usable groups; not proof of natural segments. Next: S5-09 to select targets.

## Common mistakes

- Running one k-means with one random start and reporting the result as "the segments".
- Putting 25 variables into a sample of 300, or mixing unstandardised scales so that spend in soums decides everything.
- Choosing the number of segments by how nice the names sound, with no stability check.
- Presenting significant differences on the clustering variables as proof that segments exist.
- Clustering on demographics and calling the output needs-based segments, or factor-analysing the items first as a routine step.

## Quality checklist

- Is the decision stated and are segmentation variables separated from descriptors? (yes/no)
- Are there at least 100 respondents per segmentation variable, or is the solution labelled a hypothesis? (yes/no)
- Were scales made comparable and response styles checked? (yes/no)
- Was k-means run with many random starts for several values of k? (yes/no)
- Is a stability result reported for each k, with the data-structure case named? (yes/no)
- Is every segment large enough to profile, and was the solution validated on variables not used for clustering? (yes/no)

## Output template

```
CLUSTER SEGMENTATION (S4-11)
Decision served:                Data (survey, dates, n after cleaning):
Segmentation variables (count, scale):          Respondents per variable:
Pre-processing (dropped items, standardised yes/no, response-style check):
Tool and settings (distance, linkage, k range, random starts, bootstrap pairs):

Choice of number of segments
| k | Scree | Stability (median adjusted Rand) | Smallest segment % | Comment |
Data-structure case (natural / reproducible / constructed):       Chosen k and reason:

Segment profiles
| Segment (named by need) | Size % and n | Highest items vs total | Lowest items vs total | Descriptors that differ (test, p) | FACT / INTERPRETATION |

External validation (variables not used in clustering):
Limits (sample source, stability, small segments):                Hand-over: S5-09
```

## Works with

- S5-09 needs-based segments: gives the decision before, receives the segments after. S6-01 segmentation-targeting-positioning uses the chosen targets.
- S2-03 survey sample size and S3-01 questionnaire design: plan the number of segmentation items against the sample before fieldwork.
- S3-07 response styles and S3-09 data-quality checks: run before clustering. S4-10 crosstabs and tests: profile and validate segments.
- S4-12 latent class segmentation: alternative for categorical variables; compare solutions if both are possible.
- S4-13 factor analysis: use to understand item structure, not as an automatic pre-step. S5-10 personas: optional way to communicate a verified segment.

## Notes for Uzbekistan

- Keep item wording in the original Uzbek or Russian in the profile tables.
- Polite or agreeing answer habits produce high ratings on everything, and clustering then finds "high raters" and "low raters". Check for this pattern; forced-choice or ranking items in the questionnaire reduce it.
- Telegram-bot samples miss older and rural people, so segment sizes describe bot respondents, not the market. Report sizes with that caveat. If Tashkent and the regions fall into different segments, check whether this reflects a need or only prices and availability.
- The 70 and 100 per variable rules and the stability findings come from simulations and mostly Western tourism survey data. Treat them as the best available guide, not as local fact.

## Sources

- Original: Punj, G., & Stewart, D. W. (1983). Cluster analysis in marketing research: Review and suggestions for application. Journal of Marketing Research, 20(2), 134-148. Paid. Not opened; described here only at the level of its widely cited two-stage recommendation.
- Original, open access (CC BY 4.0): Dolnicar, S., Gruen, B., & Leisch, F. (2018). Market Segmentation Analysis: Understanding It, Doing It, and Making It Useful. Springer. Opened in part (chapters on the ten steps, data exploration and distance-based extraction). https://e-book.fwf.ac.at/o:1534
- Opened: Dolnicar, S., Data-driven market segmentation analysis (author's own summary of her research programme, University of Queensland Pressbooks). https://uq.pressbooks.pub/tourismknowledge/chapter/market-segmentation-analysis-sara-dolnicar/
