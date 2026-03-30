#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Chosen Software: VLC Media Player

echo "=== Open Source Manifesto Generator ==="
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

cat > "$OUTPUT" << EOF
Open Source Manifesto — $DATE

I believe in the freedom of $FREEDOM.
Every day I use $TOOL, which proves that when we share code openly,
the whole world benefits.

If I could build and share one thing freely, it would be $BUILD.

Just like VLC Media Player — created by students so that no one
can ever lock video behind a paywall — I choose to stand for open,
transparent, and collaborative software.

— $(whoami)
EOF

echo ""
echo "✅ Manifesto saved to $OUTPUT"
cat "$OUTPUT"
