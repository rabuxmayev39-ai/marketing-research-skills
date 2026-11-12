---
name: s0-04-five-whys-ishikawa
description: Moves a vague problem from symptom towards several candidate causes using a fishbone diagram and repeated why questions. Use in the first client meeting, to produce hypotheses and not proof.
---

# 5 Whys and Ishikawa diagram: root cause questioning (S0-04)

Two simple tools from quality management are combined here. The 5 Whys is the habit of answering a problem by asking "why did this happen?" and then asking "why?" again of each answer until a deeper cause appears. It comes from the Toyota Production System and was described by Taiichi Ohno, one of its designers. The Ishikawa diagram, also called a fishbone or cause-and-effect diagram, was created by Kaoru Ishikawa. The problem is written at the "head" of a horizontal line and possible causes are sorted onto branches by category, which forces the group to look across the whole situation and not only down one line of reasoning. In this agency the two are used together in the first meeting on a vague problem: the fishbone gives breadth, the whys give depth.

Evidence grade: C. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. Both tools are popular because they are easy, not because they were shown to find true causes. The main published criticism is Alan Card's article in BMJ Quality and Safety (2017). His points: a 5 Whys chain follows one path where real problems have many; it ends in one "root cause" where there are usually several; two teams asking the same whys are unlikely to reach the same answer; answers depend on what the people in the room happen to know and are often quick deductions instead of observations; the deepest cause is not always the best place to act; and the number five is arbitrary. In his worked medical example a cause tree held more than 75 causes and about 30 paths, of which a 5 Whys exercise would cover one or two. Card concludes that the tool should be dropped as a method of root cause analysis in health care and kept at most for teaching. The Institute for Healthcare Improvement, which still offers the tool, adds its own warnings that a problem can have more than one root cause and that people in different parts of a system answer differently. Consequence for this skill: the output is a list of candidate causes to test, never a finding.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (what records or direct observation show) versus INTERPRETATION (every answer to a why that nobody has checked). Never write "the root cause is"; write "candidate cause". When the list is ready, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The first client meeting starts from a vague complaint ("clients are leaving", "the campaign did not work").
- The team needs a quick, wide list of possible causes to feed an issue tree or a research brief.
- People are fixed on one explanation and need to see others.

Do not use it when:
- A decision with large money at stake would rest on it alone. Test the candidates with data first.
- The problem is a strategic choice, not a fault. Use S0-01 and S6-08.
- Only one person, far from the customers and the work, is in the room. The answers would be guesses; run S0-12 interviews first.

## What you need before starting (inputs)
1. The symptom stated as a number with a period and a comparison ("repeat orders fell from 70% to 55% between the first and second quarter").
2. The records behind that number, so the measurement itself can be checked.
3. Two or more people who see different parts of the process: sales, production or delivery, finance, and if possible a dealer or customer voice.
4. A board or shared screen for the diagram, and 60 to 90 minutes (working rule).

## Procedure
1. Agree the problem statement with the group and write it at the head of the diagram, as the American Society for Quality (ASQ) procedure prescribes. Working rule: it must be an observed symptom with a number, not a suspected cause and not a goal.
2. Check the measurement first (working rule). Ask how the number is counted, whether the definition or the mix of customers changed between the periods, and whether the fall is larger than normal variation. Some "problems" end here.
3. Draw the category branches. ASQ lists the generic factory set (materials, machinery, methods, measurement, manpower, environment) and notes that Ishikawa encouraged renaming categories to fit the audience. Working rule for marketing problems: Product, Price, Place (distribution and delivery), Promotion, People and sales process, Customers and market, Competitors, Measurement.
4. Brainstorm causes branch by branch by asking "why does this happen?" Write every cause on its branch; ASQ allows one cause to appear under more than one category. When ideas slow down, turn to the branches with the fewest entries.
5. Ask why again of each main cause to add sub-causes as smaller branches. Go as deep as is useful: Card cites the view that more or fewer than five steps may be needed. Stop a chain when the answer is outside anyone's knowledge or outside the client's control; mark where it stopped.
6. Keep several chains, not one. Working rule, based on Card's criticism of the single path: carry at least three chains from different categories to the end, and at each why ask "what else could explain this?" before going deeper.
7. Mark the basis of every answer: O = observed or on record, S = someone was told it, G = guess. Card's warning about quick deductions made away from the actual work is the reason. Ask people from different parts of the business separately where possible and compare their chains.
8. Do not automatically choose the deepest cause. Card argues that a cause nearer to the event can be the more effective point to act on. For each candidate note how much of the symptom it could explain, whether the client can change it, and how it could be checked.
9. Hand over. Candidate causes go to S0-03 as hypotheses and to S0-13 as assumptions. State which two or three will be checked first and with what data.
10. Return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. Input: a flour mill near Tashkent selling to bakeries. Owner: "Bakers are leaving us. Repeat orders collapsed."

```
SYMPTOM (FACT, invented): bakeries reordering within 30 days
Quarter 1: 140 of 200 = 70%     Quarter 2: 121 of 220 = 55%
MEASUREMENT branch (step 2)
Quarter 2 includes 40 bakeries that bought one trial bag in a promotion:
  promotion bakeries: 4 of 40 reordered = 10%
  regular bakeries: 117 of 180 reordered = 65%
-> two effects: a mix effect from the promotion, and a real fall of
   5 points (70% -> 65%) among regular bakeries. The fishbone covers the second.
CHAINS (basis: O observed, S said, G guess)
Product: dough rises unevenly (S, two bakers) <- protein differs between
  batches (G) <- wheat from two suppliers is mixed (O) <- no batch test
  before shipping (O). Check: lab log, complaints by batch.
Place: deliveries arrive late (S) <- one truck for the city (O) <- orders
  grouped by district twice a week since April (O). Check: delivery log.
Price: a rival mill gives 15 days of credit (S, one sales agent) <- we ask
  for payment on delivery (O). Check: ask 10 lost bakeries (S1-04).
People: no entries -> ask the two sales agents separately.
CANDIDATE CAUSES TO TEST FIRST: batch variation; delivery schedule change.
Not concluded: which of them matters more, or whether both do.
```
Arithmetic check: 140 / 200 = 0.70; 121 / 220 = 0.55; 220 - 40 = 180; 121 - 4 = 117; 4 / 40 = 0.10; 117 / 180 = 0.65; 70 - 65 = 5 points.

## Common mistakes
- Following one chain to a single "root cause" and stopping.
- Starting from a suspected cause instead of a measured symptom.
- Skipping the measurement check and explaining a change that is partly a counting effect.
- Accepting answers from one senior person as facts.
- Ending every chain at "people" or "staff attitude"; working rule: ask why once more about the process around them.
- Forcing exactly five steps.
- Presenting the diagram to the client as a diagnosis.

## Quality checklist
- Is the symptom a number with a period and a comparison?
- Was the measurement checked before causes were discussed?
- Does the fishbone have entries on at least four categories, with thin branches revisited?
- Were at least three chains carried through, from different categories?
- Is every answer marked O, S or G?
- Did people from different parts of the business contribute, and were differences noted?
- Are the results called candidate causes, each with a way to check it?

## Output template
```
ROOT CAUSE SESSION - [client] - [date] - people present: ...
Symptom (FACT): ... from ... to ... | period ... | source ...
Measurement check: definition ... | mix change ... | normal variation ...
Fishbone categories and causes:
  Product: ... | Price: ... | Place: ... | Promotion: ...
  People and sales process: ... | Customers and market: ... | Competitors: ...
Chains (each step marked O / S / G):
  1 [category]: symptom <- ... <- ... <- ... | stopped because ...
  2 ... | 3 ...
Candidate causes: cause | could explain how much | changeable? | how to check
To test first: ... -> S0-03 hypotheses / S0-13 assumptions
```

## Works with
- S0-12 client and stakeholder interviews: gathering answers from people one by one. S0-13 facts, assumptions, unknowns register: storing O, S and G items.
- S0-03 issue tree: turns candidate causes into a MECE tree with hypotheses. S0-02 decision to research problem: uses the cause list in its symptom-versus-cause step.
- S0-05 growth decomposition and S0-06 funnel diagnosis: locate where the symptom sits before asking why.
- S1-23 prefer behaviour over stated reasons and S1-06 observation: replacing guesses with observation. S1-16 critical incident technique: collecting real failure events from customers.
- S2-07 triangulation: checking a candidate cause against a second source. S7-04 project retrospective: the same tools used on the agency's own projects.

## Notes for Uzbekistan
- "Why?" asked repeatedly can sound like blame. Practical caution: ask "what led to this?" or "what happened before that?" and direct questions at the process, not the person.
- Staff may not contradict the owner in the room. Collect chains separately from sales agents, drivers or dealers, in Uzbek or Russian as they prefer, and keep their wording.
- Causes named for the regions by people sitting in Tashkent are guesses (G) until someone on the spot confirms them.
- Records may be incomplete; say so on the diagram instead of filling gaps with opinion.
- The tools come from Japanese manufacturing and the main criticism from Western health care. Their fit to marketing problems here is an assumption.

## Sources
- Original: Ohno, T. (1988). Toyota Production System: Beyond Large-Scale Production. Productivity Press. Paid; not opened. Ishikawa's own books were not opened either.
- Opened, journal article on the publisher's site: Card, A. J. (2017). The problem with "5 whys". BMJ Quality and Safety. https://doi.org/10.1136/bmjqs-2016-005849 (read at https://qualitysafety.bmj.com/content/qhc/early/2016/09/02/bmjqs-2016-005849.full.pdf)
- Opened, US government agency summary: The problem with "5 whys". AHRQ Patient Safety Network. https://psnet.ahrq.gov/issue/problem-5-whys
- Opened, professional body: Fishbone diagram. American Society for Quality. https://asq.org/quality-resources/fishbone
- Opened, institute page: 5 Whys: Finding the Root Cause. Institute for Healthcare Improvement. https://ihi.org/fr/node/22961
