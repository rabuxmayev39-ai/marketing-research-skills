#!/usr/bin/env bash
# Copies all 142 skills into your personal Claude Code skills folder (~/.claude/skills).
# Run it from the repository folder:  bash scripts/install-claude-code.sh
set -euo pipefail
SRC="$(cd "$(dirname "$0")/.." && pwd)/plugins/marketing-research-system/skills"
DEST="${HOME}/.claude/skills"
mkdir -p "$DEST"
count=0
for d in "$SRC"/*/; do
  name="$(basename "$d")"
  rm -rf "${DEST:?}/$name"
  cp -r "$d" "$DEST/$name"
  count=$((count+1))
done
echo "Installed $count skills into $DEST"
echo "Restart Claude Code, then type: Use the research-orchestrator skill. Here is my brief: ..."
