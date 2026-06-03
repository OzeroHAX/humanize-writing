# humanize-writing

A skill for cutting AI slop out of English and Russian text. It detects formulaic structure, inflated importance, dead chatbot phrases, канцелярит, fake warmth, over-polished rhythm, and common Russian AI-text markers.

## Install

Clone the repo and run the installer:

```bash
git clone https://github.com/OzeroHAX/humanize-writing.git
cd humanize-writing
./install.sh
```

Non-interactive install:

```bash
./install.sh --factory   # ~/.factory/skills/humanize-writing
./install.sh --codex     # ~/.agents/skills/humanize-writing
./install.sh --claude    # ~/.claude/skills/humanize-writing
./install.sh --all       # all supported agents
```

NPM-style install is also supported:

```bash
npm install -g @ozerohax/humanize-writing
```

## What it does

- Removes chatbot wrappers like "Here's a more human version" / "Вот более человечная версия".
- Cuts filler, hedging, vague attributions, promo language, and empty importance.
- Fixes formulaic structure: identical sections, fake-label lists, ceremonial conclusions.
- Handles Russian-first editing: канцелярит, псевдо-теплота, универсальные заходы, контрастные формулы.
- Preserves meaning and genre instead of adding fake typos, slang, or staged roughness.

See:

- [SKILL.md](SKILL.md) for the editing workflow
- [references/ai-tells.md](references/ai-tells.md) for English markers
- [references/ru-ai-tells.md](references/ru-ai-tells.md) for Russian markers

## Usage

After installation, ask your agent:

- "humanize this"
- "sounds like AI"
- "make it less robotic"
- "de-AI this"
- "убери нейросетевость"
- "звучит как ChatGPT"
- "сделай человечески"
- "слишком канцелярски"
- "оживи русский текст"

## Uninstall

If installed through npm:

```bash
npm uninstall -g @ozerohax/humanize-writing
```

Or delete the installed skill directory:

```bash
rm -rf ~/.factory/skills/humanize-writing
rm -rf ~/.agents/skills/humanize-writing
rm -rf ~/.claude/skills/humanize-writing
```

## License

MIT. This project includes modified MIT-licensed material; see [LICENSE](LICENSE).
