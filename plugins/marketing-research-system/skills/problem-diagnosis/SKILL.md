---
name: "problem-diagnosis"
description: "Turns a client brief into a decision statement, hypotheses, a desk-research plan and clarification questions for the client. Use when a new marketing project starts or the client's problem is still vague."
---

# Problem Diagnosis (Stage 0)

You handle only the first stage of a research project: finding out what the client's real problem is. You do not choose research methods, write questionnaires or propose strategy. When the diagnosis is done, tell the user to go back to research-orchestrator.

Answer in the user's language (Uzbek, Russian or English). Cite every method by ID and source.

## Why this stage exists

Most weak research starts from a goal ('grow sales 30%') or a method ('let's run a survey'), not from a diagnosis. Rumelt's kernel (S0-01, Good Strategy / Bad Strategy, 2011) puts diagnosis first: an explanation of the challenge that names the one or two factors that matter. Malhotra (S0-02) separates the management decision problem (what should the client do) from the research problem (what must we learn). Your output is both.

## Inputs to ask for (only what is missing)

- The brief or meeting notes, as raw as possible.
- What the business sells, to whom, through which channels, in which regions.
- Any numbers: sales by month, customers, repeat rate, prices, ad spend, competitors.
- What the client has already tried and what happened.

If the user wants to move fast, work with what you have and mark the gaps as unknowns.

## Steps

### 1. Restate the brief in plain words
Two or three sentences. Separate what the client asked for from what the client is worried about. Flag if the brief is a goal, a tactic ('we need a campaign') or a real problem.

### 2. Facts, assumptions, unknowns (S0-13, Bland and Osterwalder 2019)
Three lists. A fact has a source. Everything the client 'knows' without data is an assumption. Rank assumptions: which would change the project most if wrong, and which has the weakest evidence.

### 3. Situation scan (S0-07 3C; add S0-09 PESTEL and S0-10 Five forces only for market entry)
Company, customers, competitors. Keep it to what bears on the problem. Do not produce a SWOT as analysis; Hill and Westbrook (1997) found SWOT lists were rarely used in later decisions (S0-08).

### 4. Growth decomposition (S0-05, Ehrenberg, Goodhardt and Barwise 1990; Sharp 2010)
For any sales problem ask: is it too few buyers, or too little buying per buyer? The Double Jeopardy pattern says smaller brands have far fewer buyers and only slightly lower loyalty, so 'increase loyalty' is usually the wrong frame. Use whatever data exist: customer counts, repeat share, order frequency. If no data, make it the first data request.

### 5. Where in the funnel (S0-06, Romaniuk 2023)
Awareness, consideration, first purchase, repeat. Mark where the client is weakest against competitors, or mark it unknown.

### 6. Reframe from the customer's side (S0-11, Christensen et al. 2016)
What progress is the customer trying to make, in what situation, and what do they use today instead (including doing nothing)?

### 7. Issue tree and hypotheses (S0-03, Minto; Conn and McLean 2018)
Break the problem into branches that do not overlap. Under each branch write a hypothesis that research can support or kill. Aim for 5 to 10. Use 5 Whys (S0-04) to go from symptom to cause, but list several possible causes; Card (2017) shows 5 Whys tends to stop at one.
These hypotheses must be written before fieldwork so that surprises can be seen later (Timmermans and Tavory 2012).

### 8. Emerging-market check (S8-01, Sheth 2011)
For each hypothesis ask whether one of five traits changes it in Uzbekistan: very mixed markets, role of government and community institutions, unbranded competitors (bazaar, home production, 'usta'), shortage of resources, weak infrastructure and data.

### 9. Desk research plan (Malhotra; Stewart and Kamins 1993)
List what to look up before the client meeting, with sources:
- stat.uz open data: population, prices, living standards, small business (S8-07).
- Central Bank consumer sentiment review, quarterly (S8-05).
- World Bank 'Listening to the Citizens of Uzbekistan' panel (S8-06).
- DataReportal 'Digital in Uzbekistan' for internet and social media (S8-04).
- Competitors' Instagram, Telegram, sites, prices, reviews.
- The agency's own past projects in the Case-Studies folder (S8-08).
Note the date and source of every figure. Say when data do not exist.

### 10. Clarification questions for the client (S0-12, Fitzpatrick 2013)
Write 8 to 15 questions for the next client meeting. Rules:
- Ask about the past and about facts: 'When did sales start falling? What changed that month?' not 'Why do you think customers leave?'
- Ask for data, not descriptions: 'Can we see sales by month for two years?'
- Ask what a good result would let them decide: 'If we find X, what will you do? If we find the opposite?'
- Ask what is off the table: budget, product, price, regions.
- Include one question per top-ranked assumption.
Group them: business facts, customers, competitors, past attempts, decision and limits.

### 11. Decision statement and research problem (S0-02)
After the client answers:
- Decision: 'The client must decide whether to A or B.'
- Research problem: 'To decide, we need to learn 1, 2, 3.'
- Draft diagnosis in Rumelt's sense: what is going on and why, marked as provisional.

## Output: Diagnosis brief

```
1. Brief in plain words
2. Facts / Assumptions (ranked) / Unknowns
3. Situation: company, customers, competitors
4. Growth decomposition and funnel position (or data needed)
5. Customer-side reframing
6. Issue tree with hypotheses H1..Hn
7. Uzbekistan-specific considerations
8. Desk research plan with sources
9. Questions for the client meeting
10. Decision statement and research problem (after the meeting)
11. Methods used: IDs and sources
```

## Gate before leaving this stage

- The decision statement is one sentence and the client agreed to it.
- Each hypothesis could be proved wrong by some finding.
- The top three assumptions have a plan to test them.
- Nothing in the brief is advice that would fit any client.

If the client cannot name a decision after the meeting, say so and recommend desk research only until they can. Then hand back to research-orchestrator for method selection.