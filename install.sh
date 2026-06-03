#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="humanize-writing"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  cat <<'EOF'
Usage: ./install.sh [--factory|--codex|--claude|--all]

Without flags, the installer asks which agent to install for.

Targets:
  --factory  ~/.factory/skills/humanize-writing
  --codex    ~/.agents/skills/humanize-writing
  --claude   ~/.claude/skills/humanize-writing
  --all      Install to all supported targets
EOF
}

target_dir() {
  case "$1" in
    factory) printf '%s\n' "$HOME/.factory/skills/$SKILL_NAME" ;;
    codex) printf '%s\n' "$HOME/.agents/skills/$SKILL_NAME" ;;
    claude) printf '%s\n' "$HOME/.claude/skills/$SKILL_NAME" ;;
    *) printf 'Unknown target: %s\n' "$1" >&2; exit 1 ;;
  esac
}

install_target() {
  local target="$1"
  local dest
  dest="$(target_dir "$target")"

  mkdir -p "$dest/references"
  cp "$SCRIPT_DIR/SKILL.md" "$dest/SKILL.md"
  cp "$SCRIPT_DIR/references/"*.md "$dest/references/"

  printf 'Installed %s to %s\n' "$SKILL_NAME" "$dest"
}

choose_target() {
  cat <<'EOF'
Install humanize-writing for:
1) Factory
2) Codex
3) Claude Code
4) All
EOF
  read -r -p "Choose 1-4: " choice

  case "$choice" in
    1) install_target factory ;;
    2) install_target codex ;;
    3) install_target claude ;;
    4) install_target factory; install_target codex; install_target claude ;;
    *) printf 'Invalid choice: %s\n' "$choice" >&2; exit 1 ;;
  esac
}

if [[ $# -eq 0 ]]; then
  choose_target
  exit 0
fi

case "$1" in
  --factory) install_target factory ;;
  --codex) install_target codex ;;
  --claude) install_target claude ;;
  --all) install_target factory; install_target codex; install_target claude ;;
  -h|--help) usage ;;
  *) usage >&2; exit 1 ;;
esac
