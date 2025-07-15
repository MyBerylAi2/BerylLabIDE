#!/bin/bash

echo "🛠️  BERYL SETUP SCRIPT STARTED"

echo "✅ Installing Node.js dependencies..."
npm install

if [ ! -f .env ]; then
  echo "✅ Creating .env file..."
  echo "GITHUB_USER=MyBerylAi2" >> .env
  echo "GITHUB_PAT=YOUR_REAL_PAT_HERE" >> .env
  echo "✅ .env file created. Please edit it with your actual GitHub PAT."
else
  echo "✅ .env already exists."
fi

echo "✅ Setup complete. Ready to rock, My King. ❤️"

