---
name: s5-11-opportunity-solution-tree
description: Builds an opportunity solution tree linking one outcome to customer opportunities, solutions and assumption tests. Use when research findings must turn into choices about what to do.
---

# Opportunity solution tree (S5-11)

An opportunity solution tree (OST) is a one-page map with four levels: one desired outcome at the top, the customer opportunities (needs, pain points, desires) that could move that outcome, the solutions considered for one chosen opportunity, and the assumption tests that show which solution deserves investment. Teresa Torres developed it for product teams and describes it in Continuous Discovery Habits (2021) and on producttalk.org. In a marketing agency it is used to move from interview findings to a small set of tested ideas (offers, messages, service changes, channels) without jumping straight to a favourite idea.

Evidence grade: C. Grades are A = tested in peer-reviewed research, B = established professional standard, C = practitioner tool with little formal testing. The OST is a thinking and alignment aid from one practitioner's work. It makes reasoning visible; it does not prove that an opportunity is real or that a solution will work. Only the evidence attached to each node does that.

Working rules for the assistant: answer in the user's language (Uzbek, Russian or English). In every output, mark each item as FACT (seen in data: quote, observation, number) or INTERPRETATION (the team's or your reading). When the tree is finished, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- The client has one clear outcome and the team has interview data about real customer experiences.
- The team is arguing about solutions and needs to see what problem each one serves.
- Findings (S5-01, S5-02) exist but nobody has decided what to act on.

Do not use it when:
- There is no agreed outcome, or several unrelated outcomes. Fix that first (S0-03, anthropic-skills:problem-diagnosis). Torres advises one outcome per tree and warns against a single company-wide tree.
- There are no customer stories yet. A tree filled from the team's opinions looks finished but is guesswork.
- The decision is already made and only needs to be communicated (use S5-13).
- The question is a market-size or tracking question, which needs quantitative work.

## What you need before starting (inputs)
1. A working view of who the target customer is and what value the client offers them.
2. One outcome, stated as a change in customer behaviour or sentiment that the team can influence, with a direction and a number if possible. A business result such as revenue is too broad for the root; adoption of one single feature or promotion is too narrow.
3. At least three to four story-based interviews ("tell me about the last time you..."), with transcripts or detailed notes. More is better.
4. Optional: sales call notes, support messages, analytics. Torres treats these as prompts for interview questions, since they usually lack the context needed to act on them directly.

If item 2 or 3 is missing, say so, state what you will assume, and mark the tree as DRAFT - LOW EVIDENCE.

## Procedure
1. Confirm the outcome. Ask: "Which customer behaviour should change, in which direction, by when?" If the user gives a business result (for example sales growth), help convert it into a customer behaviour that leads to it (for example repeat orders per baker per month). Write the outcome at the top. Record the business result it serves as a note above it.

2. Extract raw opportunities from each interview. Go story by story. For every need, pain point or desire the customer expressed or showed, write one line in the customer's voice, first person, specific to a moment ("I can't tell if the flour will arrive before the night shift"). Attach the source: interview ID and a short quote in the original language. Mark these FACT. Do not add opportunities from memory or from what the team "knows"; if the team insists, add them marked INTERPRETATION - UNVERIFIED.

3. Test each line for a hidden solution. Ask: "Is there more than one way to address this?" If only one way exists, it is a solution in disguise. Ask why the customer wants it and rewrite the line as the underlying need. Keep the original idea in a parking list for step 7.

4. Draw the experience map. Lay out the main moments of the customer's journey across all stories (for example: notice need, compare, order, receive, use, reorder). These moments become the top-level opportunities directly under the outcome.

5. Structure each branch, one at a time. Place each raw opportunity under the moment where it occurred. Then arrange them:
   - Parent and child: a child is a subset of its parent. To find more children ask "what are other reasons why this happens?"
   - Siblings: similar but distinct; you could solve one without solving the other. If two lines cannot be separated this way, merge them.
   - Similar wording does not mean the same opportunity; check the context of each story.
   - Remove opportunities that do not plausibly affect the outcome. Move them to an "out of scope" list rather than deleting them.

6. Choose one target opportunity. Compare siblings level by level, starting at the top, and go down until you reach a leaf small enough to act on. Compare on four factor groups:
   - Size: how many customers are affected and how often (count interviews; mark as indicative, not a survey).
   - Market: effect on the client's position against competitors.
   - Company: fit with the client's strategy and strengths.
   - Customer: how important it is to them and how unhappy they are with current options.
   Leave effort out at this step; effort is judged later through solutions and tests. Do not drop an opportunity only because it looks hard. Ask the user to confirm the choice and record the reason in one sentence.

7. Generate solutions for the target opportunity only. Produce at least three clearly different solutions (not three versions of one). Include parked ideas from step 3 if they fit. Comparing several options against each other gives better decisions than asking whether one idea is good enough. Under real time pressure a full comparison may be skipped for low-risk items; say so in the output if skipped.

8. List assumptions for each solution. For each of the (about three) solutions, walk through what the customer and the client must do for it to work, and write the assumptions across five types: desirability, viability, feasibility, usability, ethical. Phrase each one specifically ("bakers will check a Telegram message before 22:00").

9. Prioritise assumptions. Rate each on importance to the idea and strength of existing evidence. The ones that are important and weakly supported are tested first.

10. Design small tests. One test checks one assumption, not the whole idea. Options include a rough prototype or mock-up shown to customers, a one-question survey, a look at existing data, or a quick feasibility check. Before running any test, write the success line: what result, from how many people, would count as support. Ask the user to agree to this line in advance.

11. Read results and decide. Compare the solutions against each other on test results. Options: drop an idea, refine one for delivery, or return to step 6 and pick another opportunity.

12. Keep it alive. Update the opportunity space after every three to four new interviews. Start a new tree only if the outcome itself changes direction. Do not rebuild the tree in reaction to a single interview, sales call or complaint.

13. Hand over. Deliver the tree, the evidence table and the decision log, then return to research-orchestrator.

## Worked example
INVENTED EXAMPLE - not real data. A flour mill near Tashkent sells to small bakeries.

Input: outcome agreed with the owner: "Raise the share of bakery customers who reorder within 30 days." Four story-based interviews with bakers (B1-B4).

Output (shortened):

```
OUTCOME: more bakers reorder within 30 days
 |- Moment: ordering
 |   |- "Men buyurtma qachon kelishini bilmayman" (B1, B3) FACT
 |   |   |- "I learn about delays only when dough is already planned" (B3) FACT
 |   |   |- "I call the driver three times" (B1) FACT   <- TARGET
 |   |- "I can't order small volumes mid-week" (B2) FACT
 |- Moment: using the flour
 |   |- "Каждая партия ведёт себя по-разному" (B2, B4) FACT
 |- Moment: paying
     |- "I have to pay before I sell the bread" (B4) FACT
TARGET reason: 2 of 4 interviews, weekly frequency, competitors
 no better (INTERPRETATION, indicative only)
SOLUTIONS for target:
 S1 delivery-window message by Telegram the evening before
 S2 fixed weekly delivery slot per district
 S3 named dispatcher per customer
RISKIEST ASSUMPTIONS:
 S1: bakers read Telegram in the evening (desirability/usability)
 S2: mill can keep slots on 9 of 10 days (feasibility)
TEST S1: send manual messages to 10 bakers for 2 weeks.
 Success line set in advance: 7 of 10 stop calling the driver.
```

Parked as solution in disguise: "I want a mobile app" (B2); rewritten after asking why as "I can't order small volumes mid-week".

## Common mistakes
- Inventing opportunities instead of taking them from interview stories.
- Writing solutions as opportunities ("needs a loyalty card").
- A flat list instead of a tree, so big and small items cannot be compared.
- Brainstorming solutions across the whole tree instead of for one target.
- More than one outcome on a tree, or one tree for the whole company.
- Rejecting an opportunity early because it seems hard to solve.
- Testing whole ideas rather than single assumptions, with no success line set beforehand.
- Overreacting to one loud interview or one complaint.
- Never updating the tree after the first workshop.

## Quality checklist
- Is there exactly one outcome, stated as customer behaviour or sentiment?
- Does every opportunity have at least one interview source attached?
- Does every opportunity pass the "more than one way to address it" test?
- Are children true subsets and siblings truly distinct?
- Was one target opportunity chosen with a recorded reason that excludes effort?
- Are there at least three different solutions under the target only?
- Does each test check one assumption with a success line written before the test?
- Are FACT and INTERPRETATION labels present throughout?

## Output template
```
OPPORTUNITY SOLUTION TREE - [client] - [date] - status: DRAFT/WORKING
Business result served: ...
OUTCOME (customer behaviour, direction, number): ...
Evidence base: [n] interviews, dates, who

OPPORTUNITY SPACE
Moment 1: ...
  - Opportunity (customer voice) | source IDs | quote (original language) | FACT/INTERP
    - Child ...
Moment 2: ...
Out of scope: ...
Parked solution ideas: ...

TARGET OPPORTUNITY: ...
Why (size / market / company / customer): ...   [INTERPRETATION]

SOLUTIONS (min. 3): S1 ... | S2 ... | S3 ...

ASSUMPTIONS AND TESTS
Solution | Assumption | Type | Importance | Evidence | Test | Success line | Result
...

DECISION: drop / refine / new target - reason
Next update due after interviews: ...
```

## Works with
- S0-03 issue tree and S0-11 JTBD framing: help set the outcome and scope before the tree.
- S5-01 affinity diagram, S5-02 insight ladder, S5-03 insight tests: supply and check the opportunities.
- S5-09 needs-based segments: if opportunities differ sharply by customer group, build the tree for one segment.
- S5-12 value proposition canvas: turns the target opportunity and chosen solution into an offer.
- S5-13 pyramid storyline: reports the tree's decision to the client.
- S6-08 strategy choice cascade and S6-18 creative brief: receive the chosen solution.

## Notes for Uzbekistan
- Interviews are usually in Uzbek or Russian. Write opportunities in the language they were said in and keep quotes untranslated; add a working translation in brackets only if the reader needs it.
- When the tree is presented to an owner-founder, the owner's own ideas often arrive as ready solutions. Place them in the solutions row next to two alternatives and test them by the same rule, rather than arguing about them.
- Polite agreement in interviews can make a need look stronger than it is. Prefer what people did in a specific past story over what they say they would like.
- Small tests should use channels the client already uses with customers (phone, Telegram, the sales agent's visit) so the test is realistic and cheap.

## Sources
- Original: Torres, T. (2021). Continuous Discovery Habits: Discover Products that Create Customer Value and Business Value. Product Talk LLC. Paid book.
- Opened: Torres, T. "Opportunity Solution Trees: Visualize Your Discovery to Stay Aligned and Drive Outcomes", Product Talk. https://www.producttalk.org/opportunity-solution-trees/
- Opened: Torres, T. "Opportunity Mapping: An Essential Skill for Driving Product Outcomes", Product Talk. https://www.producttalk.org/2021/05/opportunity-mapping/
- Opened: Torres, T. "Assumption Testing: Everything You Need to Know to Get Started", Product Talk. https://www.producttalk.org/2023/10/assumption-testing/
