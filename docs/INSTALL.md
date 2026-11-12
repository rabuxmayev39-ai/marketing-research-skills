# Install guide

Pick the route that matches the tool you use. You do not need to be a programmer; each step says where to type it.

## Route 1: Claude Code, as a plugin (easiest, installs everything)

Where: **inside Claude Code**, in the chat box. Replace `rabuxmayev39-ai` with the GitHub name that owns this repository.

```
/plugin marketplace add rabuxmayev39-ai/marketing-research-skills
/plugin install marketing-research-system@marketing-research-skills
```

Restart Claude Code if it asks. Check with the `/skills` list: you should see `research-orchestrator` and the other skills. Plugin skills may appear with the plugin name in front, for example `marketing-research-system:research-orchestrator`; use whichever name your list shows.

To update later: `/plugin marketplace update marketing-research-skills`.

## Route 2: Claude Code, by copying files

Where: **in your computer's terminal** (Terminal on Mac and Linux, Git Bash or WSL on Windows), not inside Claude Code.

```
git clone https://github.com/rabuxmayev39-ai/marketing-research-skills.git
cd marketing-research-skills
bash scripts/install-claude-code.sh
```

This copies all 142 skills into `~/.claude/skills`. Restart Claude Code.

## Route 3: Claude app (claude.ai), one skill at a time

The Claude app takes skills as `.zip` files, one per skill, uploaded in its settings (look for Skills under Capabilities; menu names change, so check Anthropic's help pages if you cannot find it).

1. Download this repository (green **Code** button, then **Download ZIP**) and unzip it.
2. Build the zip files. Where: **in your computer's terminal**, from the repository folder:
   ```
   bash scripts/build-zips.sh core     # only the orchestrator and 7 stage skills (8 zips)
   bash scripts/build-zips.sh          # all 142 zips
   ```
   The files appear in a new `dist` folder.
3. Upload the zips in the Claude app's skills settings.

**Start with the 8 core skills.** The orchestrator already knows every method ID, source and grade, and stage skills carry the procedure for their stage. Add the method skills you actually use; the orchestrator tells you which one fits.

If you have no terminal, you can zip a skill folder by hand: the folder (for example `research-orchestrator`) must be the top item inside the zip, with `SKILL.md` directly inside it.

## Route 4: any other AI tool

Each `SKILL.md` is plain text. Paste the orchestrator's text into the system prompt or first message, then paste a stage or method skill when it is needed. The tool will not load them automatically, so you do this by hand.

## Check that it works

Write: *"Use the research-orchestrator skill. New project. Brief: a bakery chain wants more customers."* A working install asks for missing facts, names Stage 0 and hands over to `problem-diagnosis`.

## Troubleshooting

| Problem | Fix |
|---|---|
| Skill not listed | Restart the app. Check the folder is named exactly like the skill and has `SKILL.md` inside. |
| Upload rejected | The zip must contain the skill folder at its top level, not loose files. |
| Orchestrator names a method skill you did not install | It still gives the procedure from the stage skill and says the method skill is missing. Install it when you need the deep version. |
| Too many skills slow the choice | Install the 8 core skills first and add methods later. |
