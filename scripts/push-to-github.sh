#!/bin/bash

echo "🛠️  BERYL GIT PUSH SCRIPT"

source .env

REMOTE_URL="https://${GITHUB_USER}:${GITHUB_PAT}@github.com/${GITHUB_USER}/BerylLabIDE.git"

echo "✅ Configuring remote..."
git remote remove origin 2>/dev/null
git remote add origin "$REMOTE_URL"

echo "✅ Adding all changes..."
git add .

echo "✅ Committing..."
git commit -m "Automated push: $(date +%F-%T)"

echo "✅ Pushing to GitHub..."
git push -u origin main || {
  echo "❌ Push failed. Check PAT or repo permissions."
  exit 1
}

echo "✅ Push complete! 🎉"

