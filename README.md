# humanize-writing

An agent skill that removes the marks a language model leaves on English and Russian text, without changing what the text says.

Most humanizers replace words. This one starts where corpus research says the real signal is: the skeleton of the piece, the evidence behind its claims, and its syntax. Vocabulary comes last.

## Install

Uses the [skills](https://skills.sh) CLI, which supports Claude Code, Codex, Cursor, OpenCode and 70+ other agents:

```bash
npx skills add OzeroHAX/humanize-writing            # current project
npx skills add OzeroHAX/humanize-writing -g         # user-level
npx skills add OzeroHAX/humanize-writing -a codex   # one agent only
npx skills add OzeroHAX/humanize-writing --copy     # copy files instead of symlinking
```

Only `SKILL.md` and `references/` are installed. To update later: `npx skills update humanize-writing`.

## Usage

Ask your agent:

- "humanize this", "sounds like AI", "de-AI this", "too polished"
- "check this for AI patterns" (review mode, no rewrite)
- "убери нейросетевость", "звучит как ChatGPT", "слишком канцелярски", "оживи текст"

The reply starts with the rewritten text. Short texts get 2-3 notes; long ones get a Changes table. If a claim was cut for lack of support, a "Needs from the author" list says what would restore it. Text that doesn't read as AI gets a one-line verdict and is left alone.

## How it works

Passes run from the strongest measured signal to the weakest:

| Pass | What it checks | Why (source) |
|-|-|-|
| **Rule 0** | Delete, don't add. No invented facts, sources, anecdotes, or opinions. Voice is the author's | Adding voice produced a foreign intonation in 7 of 25 blind-rated texts |
| **1. Skeleton** | Outline test, reshuffle test, treadmill test, moral deletion | Models state the moral 77% of the time, humans 52%; structure survives any word swap |
| **2. Evidence** | Portability test, claim strength, vague attribution, hollow labels, anchors | Daily LLM users detect AI prose after buzzwords are gone, citing lack of specifics (Russell et al., ACL 2025) |
| **3. Syntax** | Trailing participial clauses, nominalizations, false agency, verb repetition. Passive voice is *not* a tell | Participial clauses 2-5x, nominalizations 2x, agentless passives 0.5x the human rate (Reinhart et al., PNAS 2025) |
| **4. Rhythm** | Length variance instead of a template, hard splices, paragraph hinges | Human sentence lengths scatter; mean length is the strongest single discriminator (Muñoz-Ortiz 2024, Cao 2026) |
| **5. Words** | Tiered vocabulary, ceremonial hedging, filler, chatbot and humanizer artifacts | Weakest layer. Lexical diversity is *higher* in LLM text (Kendro 2025, RuATD 2022), so "enriching vocabulary" moves the wrong way |
| **6. Voice** | Surface the author's stance, doubts, negative affect, mood drift. Never add any | Humans hedge and drift more than models (Herbold 2023); readers' humanness cues are fakeable (Jakesch et al., PNAS 2023) |
| **Verify** | Provenance, modality, hollowing, positional checklist, over-correction, optional blind second read | |

Russian gets its own layer: рема в конец, цепочка тема→рема, снятие рамок «важно отметить», синтаксис канцелярита по Норе Галь, парцелляция, «ёлочки» и грамматическое тире не трогаются.

## Files

- [skills/humanize-writing/SKILL.md](skills/humanize-writing/SKILL.md): the editing workflow
- [skills/humanize-writing/references/discourse.md](skills/humanize-writing/references/discourse.md): structure-level checks with the research behind each one
- [skills/humanize-writing/references/ai-tells.md](skills/humanize-writing/references/ai-tells.md): English markers
- [skills/humanize-writing/references/ru-ai-tells.md](skills/humanize-writing/references/ru-ai-tells.md): Russian markers, word order, syntax, skeleton
- [evals/](evals/): five test texts (EN blog slop, RU Telegram post, RU chat reply, clean EN academic paragraph, EN article with a machine skeleton and no buzzwords) with expected behavior and assertions

## Uninstall

```bash
npx skills remove humanize-writing
```

If you installed an earlier release with its `install.sh` or via npm, delete the directory by hand: `~/.claude/skills/humanize-writing`, `~/.codex/skills/humanize-writing`, `~/.factory/skills/humanize-writing`, or `~/.agents/skills/humanize-writing`.

## License

MIT. This project started as a fork of [jpeggdev/humanize-writing](https://github.com/jpeggdev/humanize-writing); see [LICENSE](LICENSE).
