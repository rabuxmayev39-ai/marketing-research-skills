---
name: s5-06-means-end-value-map
description: Turns laddering interview data into attribute-consequence-value chains and a hierarchical value map. Use after laddering interviews to find which product features link to which personal values.
---

# Means-end chain / hierarchical value map from laddering (S5-06)

Means-end chain theory (Gutman 1982) says buyers treat product attributes as means to reach ends: an attribute matters because of a consequence it produces, and the consequence matters because of a personal value it serves. Reynolds and Gutman (1988) turned this into an analysis routine: code laddering interviews into attributes (A), consequences (C) and values (V), count how often one code leads to another in an implication matrix, and draw the frequent links as a hierarchical value map (HVM). The map is used to choose which attribute-to-value route a product message or positioning should follow. Evidence grade: A. The method comes from peer-reviewed research and has been applied and criticised in journals for decades, so the routine itself is sound. The grade does not make any single map "true": a map built from 15-30 interviews is a qualitative picture of how this sample talks, with known weak points (interviewer pressure, coder judgement, arbitrary cut-off). Treat it as a strong source of hypotheses, not as a measurement.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (in the transcripts, countable) or INTERPRETATION (your reading).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- Laddering interviews (S1-15) have been done and transcribed, and the team needs to know why features matter, not just which features are liked.
- The team must choose a message route or positioning and wants it tied to buyer motives.
- The respondents come from one reasonably similar buyer group. Published critiques warn that pooling different groups can produce chains that no single respondent actually held.

Do not use it when:
- The interviews were ordinary topic interviews with no "why is that important to you" probing. There are no ladders to code. Use S4-03 abductive analysis instead.
- The team needs sizes or percentages of the market. The map gives counts within a small sample only.
- There are fewer than about 10 usable interviews. You can still list individual ladders, but do not draw an aggregate map.
- The purchase is routine and low-interest and respondents could not ladder past a functional consequence. Report that honestly rather than forcing values.

## What you need before starting (inputs)

- Transcripts or detailed notes of laddering interviews, in the original language, with respondent IDs.
- The elicitation questions used (how attributes were first raised).
- A short description of who was interviewed and how they were recruited.
- The decision the map must serve (message, positioning, product priority).

Ask the user for anything missing. If transcripts are missing, stop; do not rebuild ladders from memory or summaries.

## Procedure

1. Confirm the decision and the sample. Ask: "What decision will this map inform?" and "Are these respondents one buyer group or several?" If several (for example bakers and home cooks), plan one map per group.
2. Extract raw ladders. Read each transcript and pull out each sequence where the respondent moved from a feature to a reason to a deeper reason. Keep the respondent's own words in the original language. Record ladders per respondent in a table: respondent ID, ladder number, each step verbatim. A respondent normally gives more than one ladder. Do not join steps that the respondent did not join.
3. Classify each step as A, C or V.
   - Attribute: a property of the product or service (concrete, such as price or pack size; or abstract, such as "quality").
   - Consequence: what happens to the person as a result (functional, such as "saves time"; or psychological, such as "I feel calm").
   - Value: an end state the person wants in life (for example security, respect, being a good parent).
   Decision rule: if a step describes the product, it is A; if it describes what the person gets or avoids, it is C; if it describes who the person wants to be or how life should be, it is V.
4. Build the code list (content analysis). Group steps that mean the same thing under one summary code with a short neutral label. Aim for a list small enough to read on one page; published studies often land at a few dozen codes. Too many codes and no link repeats; too few and meaning is lost. Keep a codebook: code number, label, level (A/C/V), definition, two example quotes.
5. Check the coding. If a second coder is available, have them code a sample independently, compare, and resolve differences by discussion. Published studies report this agreement. If no second coder exists, say so in the report, and have the user review the codebook.
6. Rewrite each ladder as a chain of code numbers. Example: respondent 07, ladder 2 becomes 3 -> 11 -> 14 -> 21.
7. Build the implication matrix. Make a square table with all codes as rows and columns. For each ladder count:
   - direct relations: code X is immediately followed by code Y;
   - indirect relations: X leads to Y with other codes in between.
   Write each cell as direct.indirect (for example 4.02 means four direct and two indirect links). Decide and state whether you count a link once per respondent or once per ladder; counting once per respondent stops one talkative person from dominating.
8. Choose the cut-off. A cut-off is the minimum count a link needs to appear on the map. The literature says plainly that there is no statistical rule for it; it is a trade-off between keeping information and keeping the map readable. Try several values (for example 2, 3, 4, 5). For each, note how many links survive and whether the map is still readable. Pick the lowest cut-off that gives a readable map and report which share of all links it keeps. For orientation only: published studies have used 4 with 20 respondents and 3 to 6 with groups of roughly 30. Always show the user what was dropped.
9. Draw the map. Put attributes at the bottom, consequences in the middle, values at the top. Draw a line for every link at or above the cut-off. Avoid crossing lines where possible. Write on each node the code label and the number of respondents who mentioned it. Deliver it as a text diagram or table if no drawing tool is available.
10. Read the map. Identify the dominant chains: full routes from an attribute to a value where every link is strong. For each give the sum of link counts, the number of respondents who gave the full chain themselves, and two or three quotes. Flag any chain that exists on the map only because of aggregation and that no single respondent produced; treat such chains as weak.
11. Check for problems before interpreting.
    - Links running both ways between two codes, or loops: research has found these are common, which suggests motives form a network more than a strict ladder. Report them; do not hide them.
    - Values that appear only after heavy probing: mark them as possibly produced by the interview.
    - Negative chains (what people avoid): keep them separate and visible.
12. Translate into options. For each dominant chain write: the attribute to show, the consequence to promise, the value to respect, and the tone. Present two or three chains as alternative routes and state for each what evidence supports it and what would disprove it. Do not select the route for the team; hand the options to S5-02 or S6-02.
13. Report with the output template, state limits, and return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data.

Input: 18 laddering interviews with owners of small bakeries in Tashkent and Fergana about choosing a flour supplier, done in Uzbek and Russian.

Raw ladder, respondent 05 (Uzbek, kept as spoken): "Un har safar bir xil keladi" -> "xamir bir xil chiqadi" -> "non qaytmaydi, mijoz qaytib keladi" -> "ko'nglim tinch".

Codes: A1 stable quality between batches; A2 delivery on the agreed day; A3 payment after delivery; C1 dough behaves the same; C2 fewer rejected loaves; C3 regular customers return; C4 no need to hold stock; C5 cash is free for other needs; V1 peace of mind; V2 respect as a master baker; V3 family income is safe.

Implication matrix extract (direct.indirect, counted once per respondent):

| from / to | C1 | C2 | C3 | V1 | V2 |
|---|---|---|---|---|---|
| A1 | 11.00 | 2.07 | 0.08 | 0.06 | 0.05 |
| C1 | - | 9.00 | 1.06 | 0.05 | 0.04 |
| C2 | - | - | 8.00 | 2.03 | 1.03 |
| C3 | - | - | - | 5.00 | 6.00 |

Cut-off tested at 3, 4 and 5; 4 chosen (readable, keeps most links). Dominant chains:
- A1 -> C1 -> C2 -> C3 -> V2 (stable flour -> same dough -> fewer rejects -> customers return -> respect as a master). Full chain given by 5 respondents. FACT: counts above. INTERPRETATION: quality stability is valued as protection of the baker's reputation, not as a technical feature.
- A3 -> C5 -> V3 (deferred payment -> free cash -> family income safe). Full chain given by 4 respondents.

Handover: two message routes for S6-02, with the note that V1 "peace of mind" often came only after a third probe and may be an interview artefact.

## Common mistakes

- Coding benefits as values. "Saves money" is a consequence, not a value.
- Drawing a map from ordinary interviews with no real ladders.
- Choosing a cut-off that gives the story the team wanted, and not reporting the alternatives.
- Reading the map as market shares ("60% of bakers want respect").
- Pooling different buyer groups in one map.
- Treating the top of the map as the answer and ignoring the middle. The consequence level is often the most usable for messages.

## Quality checklist

- Is every ladder traceable to a respondent ID and an original-language quote? (yes/no)
- Does the codebook define each code and its level (A, C or V)? (yes/no)
- Was coding checked by a second person, or is the lack of a check stated? (yes/no)
- Does the implication matrix separate direct and indirect relations? (yes/no)
- Were at least three cut-off values compared and the choice explained? (yes/no)
- Is each dominant chain backed by respondents who gave the full chain themselves? (yes/no)
- Are facts and interpretations labelled separately? (yes/no)
- Are sample limits and possible interview artefacts stated? (yes/no)

## Output template

```
MEANS-END VALUE MAP REPORT (S5-06)
Decision this serves:
Buyer group and sample (n, recruitment, language):
Data: number of interviews / ladders extracted / average ladders per respondent

1. Codebook
| No | Label | Level (A/C/V) | Definition | Example quote (original language) |

2. Implication matrix (direct.indirect; counting rule: per respondent / per ladder)
| from / to | ... |

3. Cut-off
Values tested: ...   Chosen: ...   Share of links kept: ...   What was dropped:

4. Hierarchical value map
Values:        [ ... ]
Consequences:  [ ... ]
Attributes:    [ ... ]
Links (from -> to, count):

5. Dominant chains
Chain 1: A -> C -> C -> V | respondents with full chain: n | quotes:
  FACT:
  INTERPRETATION:
  What would disprove it:
Chain 2: ...

6. Problems noted (loops, two-way links, values from heavy probing, negative chains):
7. Message route options (attribute to show / consequence to promise / value to respect):
8. Limits and next step:
Coding check: second coder yes/no; agreement:
```

## Works with

- S1-15 laddering interviews: supplies the data. This skill cannot run without it.
- S1-07 JTBD switch interviews: gives the situation and trigger; the value map gives the motive structure. Compare the two.
- S4-03 abductive analysis: use for surprising or negative chains that do not fit.
- S5-02 insight ladder and S5-03 insight tests: turn a dominant chain into an insight statement and test it.
- S5-07 COM-B: a chain shows motivation only; check capability and opportunity before assuming a message will change behaviour.
- S5-09 needs-based segments: if groups show different dominant chains, that is a candidate segmentation basis to verify with S4-11 or S4-12.
- S6-02 positioning statement: hand over the chosen chain as benefit and reason to believe.

## Notes for Uzbekistan

- Code in the original language (Uzbek or Russian). Keep quotes as spoken; add a translation beside them only for the report.
- Polite and agreeing answers are a risk in laddering: a respondent may accept the interviewer's suggested reason. Mark any step that was offered by the interviewer rather than produced by the respondent, and count it separately.
- Repeated "why" can feel intrusive or like an exam. If the transcripts show short, socially proper answers at the top of ladders, treat those values with caution.
- Tashkent and regional respondents may be different buyer groups. Build separate maps first and merge only if the chains match.
- Means-end theory and published value lists were developed mainly on Western samples. Do not import a ready list of values; let the codes come from the data and treat any transfer as a hypothesis.

## Sources

- Original: Reynolds, T. J., & Gutman, J. (1988). Laddering theory, method, analysis, and interpretation. Journal of Advertising Research, 28(1), 11-31. Paid journal article; the original text was not opened for this skill.
- Original theory: Gutman, J. (1982). A means-end chain model based on consumer categorization processes. Journal of Marketing, 46(2), 60-72. Paid journal article.
- Opened: Veludo-de-Oliveira, Ikeda & Campomar (2006), Discussing laddering application by the means-end chain theory, The Qualitative Report 11(4). https://core.ac.uk/download/51087851.pdf
- Opened: Zanoli & Naspetti (2002), Consumer motivations in the purchase of organic food: a means-end approach (preprint of British Food Journal article). https://mpra.ub.uni-muenchen.de/32712/1/MPRA_paper_32712.pdf
- Opened: van Rekom & Wierenga (2002), Means-end relations: hierarchies or networks? ERIM Report ERS-2002-36-MKT, Erasmus University Rotterdam. https://repub.eur.nl/pub/189/erimrs20020408084827.pdf

