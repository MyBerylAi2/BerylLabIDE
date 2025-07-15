#!/bin/bash

# Beryl AI Labs: Automated GitHub Push with PAT
GITHUB_USER="MyBerylAi2"
GITHUB_PAT="github_pat_11BTTIVGA0JgV83H888VP0_aVqh8Ygb6twRXU8FFT11hfKXgmOG6PBcyiKs7C5YU5BCqQFiXDiK"
REPO_NAME="BerylLabIDE"

# Construct the authenticated HTTPS remote URL
REMOTE_URL="https://${GITHUB_USER}:${GITHUB_PAT}@github.com/${GITHUB_USER}/${REPO_NAME}.git"

# Add remote (force replace)
git remote remove origin 2>/dev/null
git remote add origin "$REMOTE_URL"

# Stage all changes
git add .

# Commit with timestamp
git commit -m "Automated push: $(date +%F-%T)"

# Push to GitHub
git push -u origin main

echo "✅ Push complete!"

