#!/bin/bash

# Test GitHub Actions Workflow Locally
# This script uses 'act' to run GitHub Actions locally

set -e

echo "🧪 Testing GitHub Actions Workflow Locally"
echo "=========================================="

# Check if act is installed
if ! command -v act &> /dev/null; then
    echo "❌ 'act' is not installed. Install it with: brew install act"
    exit 1
fi

echo "✅ 'act' is available"

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running. Please start Docker Desktop"
    exit 1
fi

echo "✅ Docker is running"

# Create act configuration if it doesn't exist
ACT_CONFIG_DIR="$HOME/Library/Application Support/act"
if [ ! -d "$ACT_CONFIG_DIR" ]; then
    mkdir -p "$ACT_CONFIG_DIR"
fi

ACT_CONFIG_FILE="$ACT_CONFIG_DIR/actrc"
if [ ! -f "$ACT_CONFIG_FILE" ]; then
    echo "Creating act configuration..."
    cat > "$ACT_CONFIG_FILE" << EOF
# act configuration
-P ubuntu-latest=catthehacker/ubuntu:act-latest
-P ubuntu-20.04=catthehacker/ubuntu:act-20.04
-P ubuntu-18.04=catthehacker/ubuntu:act-18.04
EOF
    echo "✅ Created act configuration"
else
    echo "✅ act configuration exists"
fi

echo ""
echo "🔍 Available workflows:"
act --list

echo ""
echo "🚀 Testing validate.yml workflow..."
echo "This will run the GitHub Actions workflow locally using Docker"
echo ""

# Run the validate workflow
if act -W .github/workflows/validate.yml --container-architecture linux/amd64; then
    echo ""
    echo "🎉 GitHub Actions workflow test passed!"
    echo "✅ The workflow will work correctly when pushed to GitHub"
else
    echo ""
    echo "❌ GitHub Actions workflow test failed"
    echo "⚠️  Check the output above for issues"
    exit 1
fi

echo ""
echo "📋 Next steps:"
echo "  1. Fix any issues found above"
echo "  2. Run ./scripts/test-ci-locally.sh to test locally"
echo "  3. Push to GitHub to trigger the actual workflow"
echo ""
echo "💡 Tip: You can also test specific jobs with:"
echo "     act -W .github/workflows/validate.yml -j validate"