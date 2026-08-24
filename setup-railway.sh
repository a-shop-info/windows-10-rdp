#!/usr/bin/env bash
set -e

echo "================================================="
echo "   🚀 Windows 10 Railway Auto-Deploy Script"
echo "================================================="

# 1. Check if Railway CLI is installed
if ! command -v railway &> /dev/null; then
    echo "⚠️  Railway CLI is not installed."
    echo "📥 Installing Railway CLI..."
    if command -v npm &> /dev/null; then
        npm install -g @railway/cli
    else
        bash <(curl -fsSL cli.new)
    fi
fi

echo "✅ Railway CLI is ready."

# 2. Check login status
echo "🔑 Checking Railway login status..."
if ! railway whoami &> /dev/null; then
    echo "👉 Please log in to Railway in the prompt below:"
    railway login
fi

# 3. Link or Create Railway Project
echo "📦 Initializing Railway Project..."
if [ ! -f ".railway" ]; then
    railway init
fi

# 4. Set Environment Variables
echo "⚙️ Setting up Windows 10 environment variables..."
railway variables --set "PORT=8006" \
                      "VERSION=win10" \
                      "RAM_SIZE=16G" \
                      "CPU_CORES=4" \
                      "DISK_SIZE=556G" \
                      "USERNAME=admin" \
                      "PASSWORD=root" \
                      "LANGUAGE=English" \
                      "MANUAL=N"

# 5. Deploy Project
echo "🚀 Uploading and deploying to Railway..."
railway up --detach

# 6. Generate Public Domain if not already created
echo "🌐 Generating / Checking public domain..."
railway domain || true

echo ""
echo "================================================="
echo "🎉 Deployment initiated successfully!"
echo "👉 Run 'railway logs' to monitor installation."
echo "👉 Run 'railway open' to open your Windows 10 desktop."
echo "================================================="
