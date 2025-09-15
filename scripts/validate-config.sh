#!/bin/bash

# Configuration Validation Script
# Run this script to validate your configuration files before pushing

set -e

echo "🔍 Validating configuration files..."

# Check if Python is available
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 is required for validation"
    exit 1
fi

# Install required packages if not available
if ! python3 -c "import toml" 2>/dev/null; then
    echo "📦 Installing toml package..."
    pip3 install toml
fi

if ! python3 -c "import yaml" 2>/dev/null; then
    echo "📦 Installing pyyaml package..."
    pip3 install yaml
fi

# Validate netlify.toml
echo "🔍 Validating netlify.toml..."
python3 -c "
import toml
try:
    with open('netlify.toml', 'r') as f:
        config = toml.load(f)
    print('✅ netlify.toml syntax is valid')
    
    # Count redirects
    if 'redirects' in config:
        print(f'📋 Found {len(config[\"redirects\"])} redirect rules')
    else:
        print('⚠️  No redirects found')
        
except Exception as e:
    print(f'❌ netlify.toml error: {e}')
    exit(1)
"

# Validate _config.yml
echo "🔍 Validating _config.yml..."
python3 -c "
import yaml
try:
    with open('_config.yml', 'r') as f:
        config = yaml.safe_load(f)
    print('✅ _config.yml syntax is valid')
    
    # Check URL
    if 'url' in config:
        if config['url'].startswith('https://'):
            print('✅ URL uses HTTPS')
        else:
            print('⚠️  URL should use HTTPS')
            
except Exception as e:
    print(f'❌ _config.yml error: {e}')
    exit(1)
"

# Check for common TOML issues
echo "🔍 Checking for common TOML issues..."
if grep -q '"[^"]*"[^"]*"' netlify.toml; then
    echo "❌ Found potential quote issues in netlify.toml"
    echo "   Look for nested quotes like: \"text\"more text\""
    exit 1
fi

if grep -q 'from = [^"]' netlify.toml; then
    echo "❌ Found unquoted 'from' values in netlify.toml"
    exit 1
fi

if grep -q 'to = [^"]' netlify.toml; then
    echo "❌ Found unquoted 'to' values in netlify.toml"
    exit 1
fi

echo "✅ No common TOML issues found"

# Test Jekyll build
echo "🏗️  Testing Jekyll build..."
if bundle exec jekyll build --config _config.yml,_config_production.yml; then
    echo "✅ Jekyll build successful"
else
    echo "❌ Jekyll build failed"
    exit 1
fi

echo ""
echo "🎉 All validations passed!"
echo "🚀 Ready to push to GitHub!"