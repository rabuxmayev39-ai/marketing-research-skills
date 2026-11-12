#!/usr/bin/env bash
# Builds one .zip per skill in ./dist, for uploading to the Claude app one skill at a time.
# Run it from the repository folder:  bash scripts/build-zips.sh
# Optional: bash scripts/build-zips.sh core   (only the orchestrator and the 7 stage skills)
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/plugins/marketing-research-system/skills"
OUT="$ROOT/dist"
CORE="research-orchestrator problem-diagnosis research-design question-design insight-analysis insight-synthesis marketing-strategy communication-strategy"
mkdir -p "$OUT"
cd "$SRC"
if [ "${1:-all}" = "core" ]; then list="$CORE"; else list="$(ls)"; fi
n=0
for name in $list; do
  rm -f "$OUT/$name.zip"
  zip -qr "$OUT/$name.zip" "$name"
  n=$((n+1))
done
echo "Built $n zip files in $OUT"
