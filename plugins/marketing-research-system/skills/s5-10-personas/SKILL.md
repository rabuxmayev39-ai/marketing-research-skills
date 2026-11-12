---
name: s5-10-personas
description: Builds research-based personas as a communication aid for a verified buyer group, with explicit limits. Use to make findings memorable for a team, never as evidence or as a segmentation.
---

# Personas, with caution (S5-10)

A persona is a fictional but realistic description of a typical or target user or buyer, written as if it were one person. The technique is credited to Alan Cooper, who described it for software design in 1999; it later spread into marketing. Its purpose is communication: it helps a team keep a specific kind of customer in mind and stops people from designing for "everyone". Nielsen Norman Group (NN/g) describes three kinds: proto personas made in a workshop from team assumptions, qualitative personas made from interviews, and statistical personas made from a survey with cluster analysis. Evidence grade: C. Personas are a practitioner tool with little formal testing. Chapman and Milham (2006) argue that a persona cannot be falsified because it is fictional, that nobody can say how many real people it stands for, and that each added detail shrinks the share of the population it fits. They also report that personas can become a tool in internal arguments. Weight to give: a persona is a way of presenting findings that were established by other methods. It is never a source of data, and no decision should rest on a persona detail that is not traceable to research.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (observed in data) or INTERPRETATION (your inference).
- When the work is finished, return to the "research-orchestrator" skill.

## When to use it / When not to use it

Use it when:
- Research is done, a buyer group or segment has been established, and the team needs a short, memorable way to share it with designers, sales staff, copywriters or an outside agency.
- A team keeps designing for itself and needs a concrete customer to refer to.
- A proto persona is wanted as an explicit list of team assumptions to test in research.

Do not use it when:
- There is no research and the persona would be presented as if it were findings.
- The team needs to choose a target, size a market or make an investment decision. Use S5-09 and quantitative methods.
- The client wants it mainly as an advertising targeting profile for a mass-market brand. See the caution on narrow targeting in S5-09 and S6-03.
- A segment profile or a job statement already does the communication work. Do not add a persona for decoration.

## What you need before starting (inputs)

- The purpose: who will use the persona and for which task (briefing creative work, redesigning an order process, training sales staff).
- The research base: interview transcripts, observation notes, survey results, segment profiles from S5-09.
- The scope: the whole brand or one specific task. NN/g warns that a persona made for one purpose rarely serves another.
- The stakeholders who will have to accept and use it.

## Procedure

1. Ask for the purpose and the user of the persona. "Who will use this and for what decision or task?" If the answer is "to have personas", stop and propose a segment summary instead.
2. Choose the type and say so on the document.
   - Proto persona: no new research; built from what the team believes. Allowed only if labelled "ASSUMPTIONS - NOT RESEARCH" and paired with a plan to check it.
   - Qualitative persona: from interviews. NN/g describes roughly 5 to 30 interviews, added in rounds until new ones stop giving new themes. This is the normal choice for a small agency.
   - Statistical persona: qualitative work, then a survey (NN/g suggests at least 100 respondents, preferably 500 or more) and clustering (S4-11, S4-12). Only this type can state what share of buyers a persona represents. NN/g notes the results often resemble qualitative personas built on the same research, so the extra cost needs a reason.
3. Set the scope. Narrow scope (one task, one product) gives specific, usable personas. Broad scope (the whole brand) gives general ones. Match scope to the purpose from step 1.
4. Start from the evidence, not from a character. From the research, list the attributes that differ between respondents and matter for the task: goals, needs, behaviour, barriers, situation of use, experience with the category. Group respondents who are alike on most of these. If S5-09 segments exist, use them as the groups and do not invent new ones.
5. Decide how many. Use the smallest number that covers the meaningfully different groups, usually two to four. Chapman and Milham report cases with dozens of personas that nobody could remember or apply. If two personas would lead to the same decisions, merge them.
6. Write each persona with a source for every line. Include only details that affect the task; NN/g's rule is that every detail must earn its place. Typical parts:
   - a name and short tagline that states the main need (plain, not jokey);
   - situation and experience with the category;
   - goals and concerns for this task;
   - behaviour: how, where and how often they buy or use;
   - barriers and what would change the behaviour;
   - one real quote in the original language.
   Beside each line record the evidence: respondent IDs or survey question. Mark lines that are plausible filler (age, family, hobbies, photo) as ILLUSTRATIVE, and keep them to a minimum. The more attributes you add, the fewer real people match the description.
7. Apply the traceability rule. Delete or mark as assumption any line with no source. A persona where more than a few lines are unsourced should be relabelled as a proto persona.
8. State what the persona cannot tell you. On the document itself write: the type, the sample size, that it is a composite and not a real person, that it gives no market share (unless statistical), and the date of the research.
9. Check for stereotype. Reread each persona and ask whether any detail comes from the team's picture of "that kind of person" and not from the data, especially for gender, age, region, income and language. Remove such details.
10. Involve the people who will use it. NN/g lists creation in isolation, missing leadership support and unclear purpose among the main reasons personas go unused. Share the evidence table with stakeholders, invite them to challenge lines, and record changes.
11. Set rules for use.
    - Use the persona to ask "what would this buyer need here?", then check the answer against real data or real customers.
    - If a persona conflicts with new data, the data win and the persona is revised.
    - Do not use the persona to settle an argument; go back to the evidence table.
    - Do not use it in place of testing with real customers.
12. Set a review date. Revise when the market, the product or the research base changes.
13. Deliver the persona with its evidence table and limits statement, then return to "research-orchestrator".

## Worked example

INVENTED EXAMPLE for illustration. No real data.

Input: a housing developer in Tashkent has done 14 interviews with recent apartment buyers (S1-07) and has two needs-based segments from S5-09. The sales team asks for a one-page description of the "first own home" segment to brief a brochure designer.

Type: qualitative persona. Scope: choosing and reserving an apartment. Basis: 6 of the 14 interviews.

| Line | Content | Evidence | Status |
|---|---|---|---|
| Name and tagline | "Dilnoza - first own home, fears a delayed handover" | Segment definition, S5-09 | Name ILLUSTRATIVE |
| Situation | Lives with relatives; first purchase of property | R02, R05, R07, R09, R11, R13 | FACT |
| Goal | Move in by a known date | R02, R05, R09, R11 | FACT |
| Main concern | Construction delay and extra payments | R02, R05, R07, R09, R13 | FACT |
| Behaviour | Visits the site several times; asks relatives who bought earlier | R05, R07, R09, R11 | FACT |
| What would help | Fixed handover date in the contract; seeing a finished building by the same developer | R02, R09, R11 | FACT; link to decision is INTERPRETATION |
| Quote | "Menga chiroyli rasm emas, aniq muddat kerak" | R09 | FACT |
| Age, job | Around 30, office employee | Not consistent in data | ILLUSTRATIVE - may be removed |

Limits printed on the page: composite of 6 interviews; not a real person; no market share; research date; revise after the planned survey.
Use: the designer is asked to lead the brochure with handover dates and completed projects. INTERPRETATION to verify with real buyers before printing.

## Common mistakes

- Inventing a persona in a meeting and presenting it as research.
- Filling the page with demographic and lifestyle details that have no source and no use.
- Creating too many personas.
- Treating the persona as a segment and quoting its "size".
- Using a persona built for one purpose in another project.
- Letting the persona override contradictory data.
- Writing a stereotype of a region, gender or age group.
- Producing a poster and never using it in work.

## Quality checklist

- Is the purpose and the intended user of the persona stated? (yes/no)
- Is the type (proto, qualitative, statistical) printed on the document? (yes/no)
- Does every line have a source or an ILLUSTRATIVE or assumption label? (yes/no)
- Are there four or fewer personas, each leading to different decisions? (yes/no)
- Does the document state sample size, date and that no market share is implied? (yes/no)
- Was a stereotype check done? (yes/no)
- Did the people who will use it review the evidence? (yes/no)
- Is there a review date and a rule that data override the persona? (yes/no)

## Output template

```
PERSONA (S5-10)
Type: PROTO (assumptions) / QUALITATIVE / STATISTICAL
Purpose and user of this persona:
Scope (task or product):
Research base: method, n, dates, respondent IDs:
Linked segment (S5-09), if any:

| Line | Content | Evidence (IDs or survey item) | FACT / INTERPRETATION / ILLUSTRATIVE |
| Name and tagline (states main need) |
| Situation and category experience |
| Goals |
| Concerns |
| Behaviour (how, where, how often) |
| Barriers |
| What would change behaviour |
| Quote (original language) |

Limits (print on the page):
- Composite, not a real person.
- Represents: n interviews / share of survey sample (statistical only).
- Does not show market size.
- Research date:            Review date:

Rules of use: check ideas against real customers; data override the persona.
Stakeholders who reviewed the evidence:
```

## Works with

- S5-09 needs-based segments: comes first. A persona illustrates a verified segment.
- S1-07 JTBD switch interviews and S1-15 laddering interviews: supply the goals, situations and quotes.
- S4-11 cluster analysis and S4-12 latent class segmentation: required for statistical personas.
- S5-06 means-end value map and S5-07 COM-B: give sourced content for the goals and barriers lines.
- S5-02 insight ladder: a persona may carry an insight to the team, but the insight must be established first.
- S6-01 segmentation-targeting-positioning and S6-02 positioning statement: take the segment, not the persona, as the basis.
- S6-03 growth through penetration: a reminder not to treat the persona as the only audience to reach.

## Notes for Uzbekistan

- Keep quotes in the original language (Uzbek or Russian) on the persona page; add a translation only if the reader needs it.
- Polite, agreeing interview answers can make goals sound more positive than behaviour shows. Prefer lines based on what respondents did.
- Do not merge Tashkent and regional respondents into one persona unless the data show the same needs and behaviour.
- Take extra care with stereotype checks on gender roles, family, region and language; include such details only when respondents themselves raised them and they matter for the task.
- The persona method and its critiques come from Western software and product teams. Whether it helps a given local team is unknown; judge it by whether the team actually uses it.

## Sources

- Original: Cooper, A. (1999). The Inmates Are Running the Asylum. Sams Publishing. Paid book; not opened for this skill.
- Critique, opened: Chapman, C. N., & Milham, R. P. (2006). The personas' new clothes: methodological and practical arguments against a popular method. Proceedings of the Human Factors and Ergonomics Society 50th Annual Meeting. Free author copy: https://quantuxbook.com/papers/Chapman-Milham-Personas-HFES2006-0139-0330.pdf
- Opened: Nielsen Norman Group, 3 Persona Types: Lightweight, Qualitative, and Statistical. https://www.nngroup.com/articles/persona-types/
- Opened: Nielsen Norman Group, Personas Make Users Memorable for Product Team Members. https://www.nngroup.com/articles/persona/
- Opened: Nielsen Norman Group, Why Personas Fail. https://www.nngroup.com/articles/why-personas-fail/
- Opened: Nielsen Norman Group, Personas: Study Guide. https://www.nngroup.com/articles/personas-study-guide/
