---
name: s2-10-research-ethics-consent
description: Checks a study plan against the ICC/ESOMAR Code for consent, honest purpose, data protection, children, recordings and incentives. Use before any fieldwork, including bots and mystery shopping.
---

# Research ethics and consent (S2-10)
This skill is an ethics review of a research plan before fieldwork. Its base is the ICC/ESOMAR International Code on Market, Opinion and Social Research and Data Analytics, written by the International Chamber of Commerce and ESOMAR (the 2025 revision is the fifth edition), with practical detail from the ESOMAR/GRBN Guideline on Primary Data Collection (2021) and the UK Market Research Society's mystery shopping guidelines. The Code rests on five principles: research is legal, honest, transparent and truthful; people are treated with care and not harmed; they are told how their personal data will be used and it is protected; researchers do not damage public trust in research; and the researcher stays responsible for the whole study. Evidence grade: B. This is an established professional standard, not a research finding. Nobody has tested that following it produces better data; its weight comes from wide adoption and from the fact that clients, panels and international partners expect it. Treat its rules as the floor for every project. It is not law: the Code itself says national law must be followed and that the Code applies where it sets the higher standard.

Working rules for the assistant:
- Answer in the language the user writes in (Uzbek, Russian or English).
- Label every statement as FACT (what the Code, a guideline or the plan says) or INTERPRETATION (your reading of how it applies).
- Never state what Uzbek law requires. Flag the legal question and ask the user to check it with a lawyer (procedure step 11).
- When the work is finished, return to the research-orchestrator skill.

## When to use it / When not to use it
Use it when:
- Any study collects data from or about people: interviews, groups, surveys, Telegram bots, observation, mystery shopping, social media listening, customer databases.
- The plan includes recording, client observers, incentives, a prize draw, people under 18, or sensitive topics.
- Transcripts or respondent files will be passed to a client, a subcontractor or an AI tool.
Do not use it when:
- The work uses only published aggregate statistics with no personal data (S1-03). A one-line note that no personal data are involved is enough.
- The user needs a legal opinion. This skill prepares the questions for a lawyer; it does not answer them.

## What you need before starting (inputs)
- The research plan: method, population, sample source, questions or guide, timing (S2-01).
- The list of data to be collected, including names, phone numbers, Telegram IDs, photos, audio and video.
- Who will see raw data: agency staff, freelancers, client, platforms and tools used.
- The incentive plan, and whether the client wants respondent contacts for sales follow-up.

## Procedure
1. Separate research from non-research. Ask the user: will any respondent data be used to sell to, contact or build a database of these people? The Code (Article 1) requires research to be kept clearly apart from non-research activity, and requires that people are told about any non-research use before data collection and give separate consent to it. Decision rule (working rule): if the client wants leads, run lead collection as a separate, openly labelled step with its own consent, or drop it.
2. Minimise the data (Article 3). For each personal data item ask: which research question needs it? Remove items without an answer. Give subcontractors only the minimum they need.
3. Check who the participants are (Article 2). Where children take part, a parent, guardian or responsible adult must consent, age must be established before other data are collected, and content must fit the child's age and maturity. With vulnerable people, confirm they can make an informed decision and do not press them. The ESOMAR/GRBN guideline uses 12 and under as "child" and 13 to 17 as "young person" only where no national definition exists; national law comes first, so the age limit is a legal question for step 11. Working rule: design for adults only unless the research question cannot be answered without minors.
4. Write the information and consent text. The Code (Article 4) and the guideline (section 8.1.1) require, for direct data collection: who the researcher is and how to verify and contact them; the general purpose and nature of the study; that taking part is voluntary; what data are collected and who may receive them; whether there will be re-contact; how long personal data are kept and why; and the right to withdraw at any time and have personal data deleted where feasible. The Code defines consent as agreement that is freely given, specific and informed. Decision rules (working rules): consent text fits one phone screen and is written in the respondent's language; in a bot, the first question appears only after an "I agree" button; in interviews, consent is asked before recording starts and repeated on the recording.
5. Handle the client's name honestly. The guideline allows naming the client to be delayed only where naming it would bias answers, and with the person's agreement. Working rule: say "a juice producer" at the start and offer to name the client at the end. Never invent a false sponsor or purpose.
6. Recordings and observers. Participants must know if a session is recorded and if clients or others watch it live or later (guideline 9.3). Personal data, which includes audio, video and photos, go to a client only with consent for that purpose, and the guideline asks for the client's written undertaking not to try to identify participants (10.1; Code Article 6). If a synthetic persona or AI interviewer talks to people, the Code requires this to be disclosed at the start.
7. Incentives (guideline 9.8). Tell people what the incentive is, who provides it, when they receive it and any conditions. Keep it proportionate so that it cannot look like a bribe, and suited to the audience and topic. Client vouchers or discounts that require spending money are not allowed because they are marketing. Do not reuse incentive contact data for anything else. Prize draws are regulated in many countries; the guideline tells researchers to check local law (step 11) and to publish rules, prizes, closing date and how winners are told.
8. Mystery shopping (S1-13). The guideline (9.6) requires the researcher to confirm that the client has obtained consent from the staff concerned, forbids photos or recordings of people who have not consented, and says staff must not be harmed. MRS guidance adds: tell the client's own staff in advance that service may be checked this way and how results will be used; for competitors, make no recordings, do not identify individuals, report in aggregate and keep the visit as short as a normal enquiry.
9. Passive and online data (S1-14). Collection by observing or recording behaviour needs consent on the same terms as step 4; where consent is impossible, the Code requires a legal ground and removal of identifying details as soon as operationally possible (Article 4b). Avoid undisclosed automated collection.
10. Sensitive topics. Health, religion, ethnicity, finances and similar data need a clear reason, explicit consent and a "prefer not to answer" option (guideline 9.1). Under Article 1 nobody may be harmed by taking part; the Code counts financial, reputational and mental harm and excessive intrusion as harm.
11. Legal check. List the legal questions and ask the user to put them to a lawyer: the current law on personal data and its consent form, where data on citizens may be stored and processed (bots, cloud tools and AI services often store data abroad), cross-border transfer, age of consent, call and message rules, prize draws, and recording of conversations. Record the answer and its date in the ethics record. Do not proceed on personal-data questions marked "unknown".
12. Storage, access and deletion (Article 6). Decide where files live, who has access, when personal data are deleted or anonymised, and what happens after a breach. Use a privacy notice that is easy to find. Before giving transcripts to any AI tool, remove names and contacts; the Code requires that clients are told when AI is used and how much human oversight there is, and that research data used by AI stay confidential in a secure environment (Article 7).
13. Reporting. Nobody may be identifiable by deduction (Article 6c). In B2B or small-town studies, a job title plus a district can identify a person, so blur one of them. Keep findings, interpretation and recommendations visibly separate (Article 7d). Publish a person's identity only with advance consent (Article 9e).
14. Decide. Stop rules (working rules of this skill): no fieldwork if consent text is missing, if recording is hidden, if minors take part without guardian consent, or if respondent contacts would reach the client without consent. Otherwise fill the ethics record and return to the research-orchestrator skill.

## Worked example
INVENTED EXAMPLE for illustration. No real data.
Input: a juice brand wants a Telegram-bot survey of 500 buyers. Draft plan: the bot asks for a phone number first "for the prize draw", three 100,000-sum vouchers for the client's online shop valid on orders above 300,000 sum, the client receives the full file with phone numbers "to call the dissatisfied ones", and respondents' ages start at 14.
Output of the review:

| Issue found | Source | Fix |
|---|---|---|
| Phone number collected before consent and without a research need | Code Art. 3, 4 | Ask for contact only at the end, only from those who enter the draw |
| Voucher needs a purchase from the client | Guideline 9.8 | Replace with mobile top-up paid by the agency |
| Client calls dissatisfied respondents | Code Art. 1, 6 | Deliver an anonymised file; add a separate optional question "May the producer contact you?" |
| Ages 14 to 17 included | Code Art. 2 | Raise the screener to 18+, or get guardian consent after the legal check |
| Draw rules, storage location | Step 11 | Questions sent to the lawyer; fieldwork waits for the answer |

Consent screen (Russian and Uzbek versions needed): "Agency X is running a 7-minute survey about juice for a producer; we can name it at the end. Taking part is voluntary and you can stop at any time. We do not pass your answers to anyone together with your name or number. Answers are stored until [date] and then deleted. Questions: [contact]. Press I AGREE to start."
FACT: four items in the draft conflict with the Code or guideline. INTERPRETATION: the fixes cost the client its call list, so this must be agreed with the client before launch, not after.

## Common mistakes
- Treating a bot's "Start" button as consent when no information was shown first.
- Giving the client transcripts, recordings or files with names because "they paid for the study".
- Presenting sales or lead generation as a survey.
- Recording by default and mentioning it afterwards.
- Incentives so large that people invent answers to qualify, or prizes tied to buying the client's product.
- Recording or naming competitor staff in mystery shopping.
- Quoting a rule of Uzbek law from memory or from an unofficial summary.
- Pasting identifiable transcripts into AI or cloud tools without telling the client.

## Quality checklist
- Is research separated from any sales or database use, with separate consent for the latter? (yes/no)
- Does every personal data item have a research reason? (yes/no)
- Does the consent text cover who, purpose, voluntary, data and recipients, recording, retention, withdrawal and contact? (yes/no)
- Are minors and vulnerable people either excluded or covered by guardian consent and adapted content? (yes/no)
- Are recording, observers and any AI interviewer disclosed before they start? (yes/no)
- Is the incentive proportionate, free of purchase conditions, and its rules written down? (yes/no)
- Has a lawyer answered the legal questions, with date recorded? (yes/no)
- Can no one be identified from the report, including by job title and place? (yes/no)

## Output template
```
ETHICS AND CONSENT RECORD (S2-10)
Project:                       Method:                     Reviewer and date:
Research only, or also non-research use?        If also: separate consent wording:
Participants: adults only / minors / vulnerable     Safeguards:

| Personal data item | Research reason | Who sees it | Stored where | Deleted when |

Consent text (each language):
Client named: at start / at end / not named, reason:
Recording and observers: what, who sees, client undertaking signed (yes/no)
Incentive: what, who pays, conditions, draw rules:
Mystery shopping or passive data: staff informed by client (yes/no), no recording of others (yes/no)
Sensitive topics and "prefer not to answer":
AI and cloud tools used, identifiers removed first (yes/no), client informed (yes/no):
Legal questions sent to lawyer:              Answer and date:
Stop rules triggered:                        Decision: go / fix first / stop
```

## Works with
- S2-01 research brief: the ethics record is attached to it. S2-02 sampling: sample sources must be lawful and expected by those contacted.
- S1-04, S1-05, S1-06, S1-17: consent, recording and observers. S1-08 and S3-01: consent screen and sensitive questions.
- S1-13 mystery shopping and S1-14 netnography: steps 8 and 9. S0-12 and S1-18: confidentiality of client staff and B2B informants.
- S3-06 indirect questioning and S3-10 projective techniques: allowed, but the stated purpose must stay truthful.
- S5-14 member checking: re-contact needs prior agreement. S7-04 retrospective: review ethics problems that occurred.

## Notes for Uzbekistan
- A law "On personal data" (No. LRU-547, adopted 2 July 2019) is published on the official database lex.uz; the page shows later editions exist and has articles titled on consent, cross-border transfer and special conditions for processing data of citizens. This skill did not read or interpret their content. Ask a lawyer about the current edition before each new type of project.
- Telegram bots, cloud spreadsheets and AI services may store data outside the country. Put the storage question to the lawyer in writing.
- Write consent in Uzbek and Russian and keep it short. Read it aloud in interviews; do not rely on a signed form alone.
- Polite or agreeing habits mean a person may say "yes" to taking part or to recording without feeling free to refuse. Offer the refusal option in words ("it is fine to say no") and accept hesitation as a no.
- In regions and small communities people are easier to identify from details. Apply step 13 more strictly outside Tashkent.
- The Code and guidelines were written mainly from European and North American practice. Treat any transfer to local habits as a hypothesis and prefer the stricter reading.

## Sources
- Original: ICC/ESOMAR (2025). ICC/ESOMAR International Code on Market, Opinion and Social Research and Data Analytics, fifth edition. Free. Opened and read in full: https://community.esomar.org/uploads/public/knowledge-and-standards/codes-and-guidelines/ICCESOMAR-International-Code_English.pdf
- Opened: International Chamber of Commerce, publication page for the 2025 Code. https://iccwbo.org/news-publications/policies-reports/iccesomar-international-code-market-opinion-social-research-data-analytics/
- Opened: ESOMAR and GRBN (2021). Guideline for researchers and clients involved in primary data collection. Free. https://grbn.org/wp-content/uploads/2021/09/ESOMAR_GRBN-Guideline-on-Primary-Data-Collection-2021-09-13.pdf
- Opened: Market Research Society. Guidelines for mystery shopping research (file dated September 2014). Free. https://www.mrs.org.uk/pdf/2014-09-01%20Mystery%20Shopping%20Research%20Guidelines.pdf
- Opened (title, number, date and article titles only): Law of the Republic of Uzbekistan "On personal data", LRU-547. https://lex.uz/docs/4831939
- Not opened: the separate ESOMAR/GRBN guideline on research with children, young people and other vulnerable individuals, which the primary data collection guideline refers to for detail.
