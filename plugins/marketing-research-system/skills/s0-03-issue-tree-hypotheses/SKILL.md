---
name: s0-03-issue-tree-hypotheses
description: Breaks a problem into non-overlapping branches and attaches a testable hypothesis to each, then prunes. Use to decide what the research must prove or kill before fieldwork is planned.
---

# Issue tree and hypothesis-driven problem solving (S0-03)

An issue tree (also called a logic tree) is a drawing that splits one problem into its parts, and each part into smaller parts, so that the whole team can see what the problem is made of. The parts at each level should be MECE: mutually exclusive (no overlap) and collectively exhaustive (together they cover everything). Barbara Minto, author of The Pyramid Principle, says she coined the abbreviation while at McKinsey and traces the underlying idea back to Aristotle. Hypothesis-driven problem solving adds one step: each end branch gets a statement that data can confirm or kill, so research is planned to test those statements instead of collecting everything. The fullest practical description is the seven-step method in Charles Conn and Robert McLean's Bulletproof Problem Solving (2018): define the problem, break it down, prioritise, plan the work, analyse, synthesise, communicate.

Evidence grade: B. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. This is the standard working method of strategy consulting firms, described here by former McKinsey partners. No controlled study showing that teams using trees reach better answers was found among the sources opened for this skill. Its known limits: a tree drawn before any data can lock the team into a wrong framing, so it must be redrawn after desk research; an early hypothesis invites confirmation bias, the habit of noticing only supporting evidence; and branches that take equal space on the page are not equally important. Conn and McLean themselves warn about these risks and prescribe team challenge and repeated revision; that is advice, not proof that it works. Treat the tree as a planning tool, not as a finding.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). Label FACT (numbers from records) versus INTERPRETATION (the way the tree is cut, every hypothesis until tested). Keep every version of the tree. When the tree, hypotheses and work plan are done, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The decision and research problem are stated (S0-02) and the team must decide what exactly to study.
- The problem is broad ("why are sales falling", "how can we grow") and people argue from different parts of it.
- A research plan has grown into a long list of questions with no priorities.

Do not use it when:
- The problem is not yet defined or the client cannot name a decision. Go to S0-02 or S0-12.
- The field is unknown and the aim is open discovery. A tree of guesses would narrow the view too early; start with exploratory work (S1-01, S1-04) and build the tree afterwards.
- One operational fault needs a cause. S0-04 is quicker.

## What you need before starting (inputs)
1. A problem statement that is specific and bounded: what is being solved, for whom, by when, and what is off limits. Conn stresses knowing the decision-maker's context and constraints.
2. The numbers behind the problem, split as far as records allow (by period, product, channel, region).
3. What the client and team already believe (S0-13).
4. Two or three people to challenge the tree, at least one from outside the project.

## Procedure
1. Write the problem as one question at the root of the tree. Narrow it if it is vague: Conn's colleague Hugo Sarrazin gives the example of turning "can we grow in Japan?" into a question about a specific product, segment or channel.
2. Make the first cut in two or three different ways and compare them; Conn says he usually tries several cuts. Where the problem is a number, prefer a cut that is arithmetically complete, because it cannot leave anything out: profit = revenue minus cost; sales = buyers x purchases per buyer x value per purchase (S0-05); orders = leads x visit rate x close rate. Choose the cut that shows most clearly where the gap is.
3. Fill in the numbers on the first level before going deeper. Often one branch holds most of the gap and the others can be left shallow.
4. Split the branch that holds the gap into possible causes. Check each level for MECE: does any cause sit under two branches (overlap)? Is anything missing? Working rule: two to five branches per level and two to three levels are enough; add an "other" branch only if you write what might be in it.
5. Attach a hypothesis to each end branch. The book excerpt describes trees as producing clear hypotheses that can be tested with data. Working rule for the format: "We believe X. If true we will see A in [data source]; if false we will see B."
6. Prioritise (prune). The source rule: keep branches that are both important to the outcome and something the client can change. In Conn's salmon example ocean conditions mattered a great deal but could not be influenced, so the team worked on habitat and harvest. Record pruned branches and the reason; do not delete them.
7. Write the "one-day answer": the team's current best answer in a few sentences, as if it had to be given tomorrow. Conn and McLean recommend keeping such an answer current throughout. Mark it INTERPRETATION and lock it with S2-11 so later surprises are visible.
8. Plan the work for each surviving hypothesis: analysis or method, data source, owner, date, and what result would kill it. Follow the source advice to start with simple counts and estimates before complex methods, and keep the plan short; Conn distrusts long plans made months ahead.
9. Guard against bias. Source practices: a duty to dissent, with someone assigned to argue against the leading hypothesis; junior people speak first so they do not simply follow seniors. Working rule: for each hypothesis write one rival explanation.
10. Redraw the tree after desk research and after the first fieldwork results. Keep the old version and note what changed and why. The authors describe the process as iterative, not a straight line.
11. Return to research-orchestrator with the tree, hypotheses, pruned list and work plan.

## Worked example
INVENTED EXAMPLE - not real data. Input: a housing developer in Tashkent. Problem: "Why did apartment sales fall from 60 to 42 a month, and what can we change by March?"

```
ROOT: sales per month = leads x visit rate x close rate          FACT (invented)
              leads    visit rate   visits   close rate   sales
Last spring   1,200    25%          300      20%          60
This autumn   1,200    25%          300      14%          42
-> leads and visits unchanged; the whole gap (18 sales, 30%) is in close rate
BRANCH "close rate fell" - causes and hypotheses                 INTERPRETATION
H1 Price: our price per m2 rose 8% while nearby projects did not move.
   True: lost buyers name price, bought nearby. False: they bought dearer.
H2 Financing: mortgage or instalment terms got worse for buyers.
   True: lost buyers did not buy anywhere. False: they bought elsewhere.
H3 Sales team: two of five experienced managers left in summer.
   True: close rate of new managers far below that of the old ones.
H4 Product: the flats left unsold are the worst layouts and floors.
   True: close rate normal on good layouts, low on the rest.
MECE check: price, financing, people, product - "competitor opened nearby"
   overlaps H1, so it is placed under H1 as a sub-branch, not as a fifth.
PRUNE: H2 important but bank terms cannot be changed by the client ->
   keep as context, test only instalment plan (changeable).
ONE-DAY ANSWER: mostly H3 with some H1. Rival: H4.
WORK PLAN: H3 CRM close rate by manager (1 day); H4 CRM by layout (1 day);
   H1 and H2 calls to 30 lost leads (S1-04) and mystery visits (S1-13).
```
Arithmetic check: 1,200 x 0.25 = 300; 300 x 0.20 = 60; 300 x 0.14 = 42; 60 - 42 = 18; 18 / 60 = 0.30.

## Common mistakes
- Going three levels deep on every branch before putting any numbers on the first level.
- Branches that overlap, or a list of topics (price, brand, digital) that is not a breakdown of the question.
- Hypotheses that cannot fail ("customers want quality").
- Looking only for evidence that supports the first hypothesis.
- Pruning by opinion with no record, so nobody can reopen a branch later.
- Keeping the first tree after the data have shown it is cut the wrong way, or treating the one-day answer as the result.

## Quality checklist
- Is the root a single, bounded question tied to a decision?
- Were at least two different first cuts tried?
- Are first-level branches filled with numbers where records exist?
- Does each level pass the MECE check?
- Does every end branch carry a hypothesis with "if true / if false" evidence?
- Are pruned branches recorded with reasons (importance and changeability)?
- Is there a rival explanation and a named dissenter, and is the tree dated, versioned and due for revision after desk research?

## Output template
```
ISSUE TREE - [client] - version [n] - [date]
Root question: ... | decision it serves: ... | limits: ...
First cut used: ... | other cuts tried: ...
Level 1 (with numbers, FACT): branch ... = ... | branch ... = ...
Branch holding the gap: ...
  Cause 1 -> H1: we believe ... | if true: ... | if false: ... | rival: ...
  Cause 2 -> H2: ... (repeat)
MECE check: overlaps ... | gaps ...
Pruned: branch ... | reason: not important / not changeable
One-day answer (INTERPRETATION): ...
Work plan: hypothesis | analysis or method | source | owner | date | kill result
Changes since last version: ...
```

## Works with
- S0-02 decision to research problem: supplies the root question. S0-01 strategy kernel: rival diagnoses become branches.
- S0-05 growth decomposition and S0-06 funnel diagnosis: ready-made arithmetic first cuts. S0-04 5 Whys and Ishikawa: generating causes under one branch. S0-07 3C and 5C analysis: checking nothing is missing.
- S0-13 facts, assumptions, unknowns register and S2-11 write expectations down before fieldwork: recording hypotheses before data.
- S1-03 desk research first: the first test and the trigger for redrawing. S2-01 research brief: receives the hypotheses and work plan.
- S4-07 negative case analysis and S5-05 what would have to be true: testing hypotheses later. S5-13 pyramid storyline: Minto's pyramid for presenting the answer.

## Notes for Uzbekistan
- Seniority can silence challenge in a meeting. Practical caution: collect hypotheses and objections in writing or one by one before the group session, and let junior staff speak first.
- Client records may not split by channel or region. Check what can be split before choosing the first cut; a cut with no numbers is weaker than a rougher cut with numbers.
- Build the tree in the team's working language, Uzbek or Russian, and translate once at the end (S3-03).
- Do not copy the branches from a Tashkent project to a regional one, or the reverse; treat the transfer as a hypothesis.
- The sources' examples come from large firms and Western markets. The method is logic and should travel; the typical causes placed on the branches may not.

## Sources
- Original: Minto, B. (1985; revised 1996). The Pyramid Principle. Paid; not opened. Author's site, opened: https://www.barbaraminto.com/
- Original: Conn, C., and McLean, R. (2018). Bulletproof Problem Solving. Wiley. Paid; full book not opened. Publisher's free excerpt of chapter 1, opened: https://catalogimages.wiley.com/images/db/pdf/9781119553021.excerpt.pdf
- Opened, interview with Conn and Sarrazin: How to master the seven-step problem-solving process. McKinsey and Company. https://www.mckinsey.com/capabilities/strategy-and-corporate-finance/our-insights/how-to-master-the-seven-step-problem-solving-process
- Opened, interview with Conn and McLean: Want better strategies? Become a bulletproof problem solver. McKinsey and Company. https://www.mckinsey.com.br/capabilities/strategy-and-corporate-finance/our-insights/want-better-strategies-become-a-bulletproof-problem-solver
- Opened, interview with Minto on MECE: Barbara Minto: "MECE: I invented it, so I get to say how to pronounce it". McKinsey Alumni Center. https://www.mckinsey.com/alumni/news-and-insights/global-news/alumni-news/barbara-minto-mece-i-invented-it-so-i-get-to-say-how-to-pronounce-it
