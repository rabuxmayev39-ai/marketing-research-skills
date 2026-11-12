---
name: s5-08-behavioural-economics-lens
description: Reviews a purchase decision for reference points, loss framing, anchors, defaults and social proof, and turns each into a testable hypothesis. Use when designing offers, prices or choice settings.
---

# Behavioural economics lens (S5-08)

This lens applies findings from the psychology of judgement and choice to a specific buying decision. Its core is prospect theory, published by Daniel Kahneman and Amos Tversky in 1979: people judge outcomes as gains or losses relative to a reference point, not as final states; the value curve is concave for gains, convex for losses and steeper for losses; sure outcomes get extra weight compared with merely probable ones; and small probabilities tend to be overweighted. Later work, summarised for general readers in Kahneman's 2011 book, added anchoring, default effects and related ideas, and social proof comes from the persuasion literature. The lens is used to find where the way a choice is presented may shift the choice. Evidence grade: A for the core, with clear differences between effects. Prospect theory's main patterns were replicated in a 2020 study across 19 countries, and anchoring and gain/loss framing replicated in the Many Labs project. But a 2022 re-analysis of a large nudge meta-analysis found that the average effect shrank to near zero after correction for publication bias, and loss aversion as a general law has been challenged in the consumer psychology literature. In practice: use the lens to generate hypotheses and always test them locally; never promise a client an effect size.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (observed in data) or INTERPRETATION (your inference).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- The team is designing or reviewing a price presentation, offer, package line-up, order form, sales script or point-of-sale setting.
- Research shows people say they want the product but do not act, and capability and access have been checked.
- The team wants a list of testable changes to the choice setting.

Do not use it when:
- The main barrier is that people cannot find, afford or use the product. Fix that first (S5-07).
- The team wants to "apply biases" to push a poor offer. The lens does not repair a weak product, and manipulative use damages trust.
- No test is possible and the stakes are high. Untested behavioural tweaks should not carry a large decision.
- The task is to explain who buys or why they value the product (use S5-09, S5-06).

## What you need before starting (inputs)

- The exact decision: who chooses, between which options, at what moment, in which channel.
- The current choice setting: screenshots, price list, script, shelf photo, order form.
- What buyers compare against (previous price, competitor, what they use now).
- Any data on behaviour at this point: conversion, drop-off, most-chosen option.
- What can be changed and what can be measured.

## Procedure

1. Specify the decision. Write one sentence: who decides what, between which options, when and where. If the team cannot name the moment of choice, stop and get it from research (S1-07).

2. Describe the choice setting as it is now. List in order what the buyer sees or hears: options, sequence, first number mentioned, what is pre-selected, what happens if they do nothing, what other buyers' behaviour is visible. FACT only at this step.

3. Find the reference point. Ask: "What does the buyer compare this offer with?" Candidates: the price last paid, the usual price in the bazaar or shop, the competitor's offer, what they own now, what they expected. Use interview evidence; if there is none, mark it as an assumption. Decision rule: if different buyer groups hold different reference points, analyse them separately.

4. Check gain and loss framing. Relative to that reference point, does the buyer experience the offer as a gain or as a loss? Note what the buyer gives up (money, an old habit, a trusted supplier). Hypothesis types: reframe a surcharge as a discount forgone or the reverse; show what stays the same; reduce what feels like loss by trial, guarantee or return. Caution to state every time: prospect theory was established on choices between risky money outcomes, and the claim that losses always outweigh equal gains is disputed. Treat loss framing as a hypothesis that depends on context.

5. Check risk and certainty. Is any outcome uncertain for the buyer (delivery date, quality, final cost)? The theory predicts extra weight on certain outcomes. Hypothesis types: turn a probable benefit into a guaranteed one; fix the total price; state a firm date.

6. Check anchors. Which number does the buyer meet first (list price, top package, competitor price, a number said by the salesperson)? Anchoring has replicated strongly for numeric estimates. Hypothesis types: order of packages, showing a reference price, where the per-unit or per-month figure appears. Do not invent a false "old price"; that is deception and may break advertising law.

7. Check defaults and effort. What happens if the buyer does nothing? What is pre-selected? How many steps does each option need? Hypothesis types: pre-select the option most buyers pick anyway, cut steps, make the next action obvious. State the evidence position: pooled evidence for nudges, defaults included, is contested after correction for publication bias, and results vary a lot between settings. A default must be easy to change and must serve the buyer.

8. Check social proof. Can the buyer see what similar people choose? Hypothesis types: show true, specific and relevant information about other buyers. This lens did not verify effect sizes for social proof; hand the design to S6-15 and test it.

9. Write hypotheses. For each idea use the form: "If we change X in the setting for group Y, then measurable behaviour Z will change, because of mechanism M." Add evidence strength for the mechanism:
   - Strong: replicated in large multi-site studies (prospect theory patterns, anchoring, gain/loss framing).
   - Mixed: effect exists in some settings; average effect disputed (nudges and defaults in general, loss aversion as a general rule).
   - Not verified here: anything else. Say so.

10. Run the ethics check. Reject any idea that depends on false information, hides costs, makes cancelling or refusing hard, or works only if the buyer does not notice it. Test question: would the buyer be content if we explained what we did and why?

11. Prioritise. Rank hypotheses by expected effect on the target behaviour, cost and speed of testing, and risk to trust. Keep three to five.

12. Design the test. For each kept hypothesis define: version A (current) and version B, the measure (actual behaviour, not stated liking), the sample or period, and the decision rule set in advance. Where a split test is impossible, use matched outlets or alternating weeks and state the weakness.

13. Report with the output template and return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data.

Input: a furniture maker in Tashkent sells sofas in its showroom. Visitors ask the price, hear one figure and many leave. The team can change the price presentation and the sales script.

Setting now (FACT from showroom observation notes): the salesperson states the full price of the base model first; delivery and assembly are quoted afterwards as extra costs; fabric upgrade is offered last; no information on what other buyers choose.

Reference point (FACT, 9 exit interviews): 6 visitors compared with a price seen at a furniture bazaar; 3 with an online listing.

| No | Hypothesis | Mechanism | Evidence strength |
|---|---|---|---|
| 1 | If the price is quoted as one total with delivery and assembly included, fewer visitors will leave at the price stage | Extras quoted afterwards are felt as losses against the first figure | Mixed |
| 2 | If the salesperson shows the top model first and then the base model, more visitors will ask for a measurement visit | Anchoring on the first number | Strong for anchoring in general; untested in this setting |
| 3 | If a written guarantee with a fixed delivery date is given, more visitors will pay a deposit | Extra weight on certain outcomes | Strong for the theory; untested here |
| 4 | If the script states the true share of buyers choosing the stain-resistant fabric, more will choose it | Social proof | Not verified here |

Ethics check: all four use true information; hypothesis 2 must not involve a model the shop does not really sell.
Test: alternate script A and script B by week for 6 weeks; measure share of visitors who book a measurement visit and share who pay a deposit. INTERPRETATION: hypothesis 1 addresses the stated reason for leaving most directly and should be tested first.

## Common mistakes

- Listing biases without tying each to a specific moment in a specific decision.
- Quoting "losses hurt twice as much as gains" as a fixed fact for any product and audience.
- Treating a book or a popular article as proof that an effect will occur here.
- Skipping the reference point and guessing the frame.
- Measuring stated preference instead of behaviour.
- Changing several things at once so the test cannot show what worked.
- Using fake scarcity, fake former prices or hard-to-undo defaults.
- Applying the lens when the real barrier is access, price level or product quality.

## Quality checklist

- Is the decision specified (who, what options, when, where)? (yes/no)
- Is the current choice setting described from observation, not memory? (yes/no)
- Is the reference point supported by evidence or marked as an assumption? (yes/no)
- Does each hypothesis name the change, the group, the behaviour measure and the mechanism? (yes/no)
- Does each hypothesis carry an evidence-strength label? (yes/no)
- Did every kept idea pass the ethics check? (yes/no)
- Is there a test with a behaviour measure and a decision rule set in advance? (yes/no)
- Are facts and interpretations labelled separately? (yes/no)

## Output template

```
BEHAVIOURAL ECONOMICS REVIEW (S5-08)
Decision: [who] chooses [what] between [options] at [moment] in [channel]
Capability and access checked? (S5-07) yes / no / not done

1. Choice setting now (FACT, source):
   Sequence of what the buyer sees or hears:
   First number met:
   Pre-selected option / what happens if nothing is done:
   Visible behaviour of other buyers:

2. Reference point(s) and evidence:

3. Hypotheses
| No | If we change... | for group... | then behaviour... | because (mechanism) | Evidence strength: strong / mixed / not verified |

4. Ethics check per hypothesis (true information? easy to refuse? acceptable if explained?):

5. Priority (effect / cost / risk to trust) and the 3-5 kept:

6. Test plan
| Hypothesis | Version A | Version B | Behaviour measure | Sample or period | Decision rule |

7. FACT vs INTERPRETATION summary:
8. Limits (what was not tested, where evidence is from other countries):
```

## Works with

- S5-07 COM-B: run first. This lens mostly serves automatic motivation and the restructuring of the choice setting.
- S1-07 JTBD switch interviews: source for the moment of choice, the reference point and what the buyer gives up.
- S5-06 means-end value map: shows which gains and losses matter to the buyer.
- S5-02 insight ladder and S5-03 insight tests: turn a confirmed hypothesis into an insight and check it.
- S6-15 persuasion principles: takes over the design of social proof and related message devices.
- S6-02 positioning statement: the reference point found here informs the frame of reference.
- S4-03 abductive analysis: use when a test result contradicts the predicted effect.

## Notes for Uzbekistan

- Collect reference-point evidence in the buyer's own words and keep quotes in Uzbek or Russian.
- Polite, agreeing answers make stated reactions to an offer unreliable. Test on behaviour: bookings, deposits, repeat orders.
- Where prices are negotiated, the first number named has a different role than on a fixed price tag. Observe how the conversation actually goes before forming anchoring hypotheses.
- Tashkent and regional buyers may hold different reference prices and use different channels. Form and test hypotheses per market.
- The 2020 multi-country replication is encouraging, but most behavioural studies used Western or student samples. Treat every effect as a hypothesis until a local test supports it, and report local null results honestly.

## Sources

- Original: Kahneman, D., & Tversky, A. (1979). Prospect theory: an analysis of decision under risk. Econometrica, 47(2), 263-292. Paid journal article; abstract free.
- Original (book, paid): Kahneman, D. (2011). Thinking, Fast and Slow. Farrar, Straus and Giroux. Not opened for this skill.
- Opened: Econometric Society page with the abstract of the 1979 paper. https://www.econometricsociety.org/publications/econometrica/1979/03/01/prospect-theory-analysis-decision-under-risk
- Opened: Columbia University Mailman School of Public Health, Global Study Confirms Influential Theory Behind Loss Aversion (on Ruggeri et al. 2020, Nature Human Behaviour). https://www.publichealth.columbia.edu/news/global-study-confirms-influential-theory-behind-loss-aversion
- Opened: Nature news report on the Many Labs replication project (anchoring and gain/loss framing replicated). https://www.nature.com/articles/nature.2013.14232
- Opened: Maier et al. (2022), No evidence for nudging after adjusting for publication bias, PNAS (open access on PubMed Central). https://pmc.ncbi.nlm.nih.gov/articles/PMC9351501
- Opened (abstract only): Gal, D., & Rucker, D., The Loss of Loss Aversion: Will It Loom Larger Than Its Gain? Journal of Consumer Psychology. https://papers.ssrn.com/abstract=3049660
