# Contributing

Useful contributions, in order of value:

1. **Replace a paid or weak source with a free, credible one** and update that skill's Sources section.
2. **Correct a figure or a claim**, with a link to the page where you saw it.
3. **Report a failure**: a case where the orchestrator chose a poor method or a gate let weak work through.
4. **Add a methodology.** Follow the structure of any file in `plugins/marketing-research-system/skills/s*/SKILL.md`: frontmatter with `name` equal to the folder name and a one-sentence `description` under 200 characters; then the sections used in the existing skills. Add the ID to the orchestrator's index.

Rules for every skill:
- Never invent a citation, statistic, quote or URL. If you did not see it, leave it out or mark it "Working rule".
- Paraphrase; no quote of 15 words or more; no links to third-party copies of paid works.
- Examples must be labelled as invented.
- No client names, respondent details or personal data.
- Run `claude plugin validate .` before you open a pull request.
