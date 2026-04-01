#!/bin/bash
# Auto-deploy to GitHub Pages
cd /home/claude/bahubali-site
cp index.html /mnt/user-data/outputs/bahubali-ai-webpage.html
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
git add -A
git commit -m "🚀 Deploy — $TIMESTAMP" 2>/dev/null || echo "Nothing to commit"
git push && echo "✅ Live at https://coder4ever2.github.io/bahubali-biryani-house"
