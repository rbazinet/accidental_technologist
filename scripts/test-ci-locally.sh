#!/bin/bash

# Local CI Testing Script
# This script mimics what GitHub Actions does to test CI locally

set -e

echo "🧪 Testing CI Pipeline Locally"
echo "================================"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    local status=$1
    local message=$2
    case $status in
        "success")
            echo -e "${GREEN}✅ $message${NC}"
            ;;
        "error")
            echo -e "${RED}❌ $message${NC}"
            ;;
        "warning")
            echo -e "${YELLOW}⚠️  $message${NC}"
            ;;
        "info")
            echo -e "${BLUE}🔍 $message${NC}"
            ;;
    esac
}

# Check if we're in the right directory
if [ ! -f "netlify.toml" ] || [ ! -f "_config.yml" ]; then
    print_status "error" "Must be run from project root directory"
    exit 1
fi

print_status "info" "Starting local CI test..."

# Step 1: Check Python availability
print_status "info" "Checking Python availability..."
if ! command -v python3 &> /dev/null; then
    print_status "error" "Python3 is required but not found"
    exit 1
fi
print_status "success" "Python3 is available"

# Step 2: Install Python dependencies
print_status "info" "Installing Python dependencies..."
if ! python3 -c "import toml" 2>/dev/null; then
    print_status "info" "Installing toml package..."
    pip3 install toml > /dev/null 2>&1
fi

if ! python3 -c "import yaml" 2>/dev/null; then
    print_status "info" "Installing pyyaml package..."
    pip3 install pyyaml > /dev/null 2>&1
fi
print_status "success" "Python dependencies installed"

# Step 3: Validate netlify.toml
print_status "info" "Validating netlify.toml syntax..."
if python3 -c "
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
"; then
    print_status "success" "netlify.toml validation passed"
else
    print_status "error" "netlify.toml validation failed"
    exit 1
fi

# Step 4: Validate _config.yml
print_status "info" "Validating _config.yml syntax..."
if python3 -c "
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
"; then
    print_status "success" "_config.yml validation passed"
else
    print_status "error" "_config.yml validation failed"
    exit 1
fi

# Step 5: Check Ruby availability
print_status "info" "Checking Ruby availability..."
if ! command -v ruby &> /dev/null; then
    print_status "error" "Ruby is required but not found"
    exit 1
fi
print_status "success" "Ruby is available"

# Step 6: Check Bundler
print_status "info" "Checking Bundler..."
if ! command -v bundle &> /dev/null; then
    print_status "error" "Bundler is required but not found"
    exit 1
fi
print_status "success" "Bundler is available"

# Step 7: Install Jekyll dependencies
print_status "info" "Installing Jekyll dependencies..."
if bundle install > /dev/null 2>&1; then
    print_status "success" "Jekyll dependencies installed"
else
    print_status "error" "Failed to install Jekyll dependencies"
    exit 1
fi

# Step 8: Test Jekyll build
print_status "info" "Testing Jekyll build..."
if JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_production.yml > /dev/null 2>&1; then
    print_status "success" "Jekyll build successful"
else
    print_status "error" "Jekyll build failed"
    exit 1
fi

# Step 9: Verify build output
print_status "info" "Verifying build output..."
if [ ! -d "_site" ]; then
    print_status "error" "_site directory not created"
    exit 1
fi

if [ ! -f "_site/sitemap.xml" ]; then
    print_status "error" "sitemap.xml not generated"
    exit 1
fi

if [ ! -f "_site/index.html" ]; then
    print_status "error" "index.html not generated"
    exit 1
fi

print_status "success" "Build output verified"

# Step 10: Check for HTTP links
print_status "info" "Checking for HTTP links in posts..."
if grep -r "http://" _posts/ --exclude="*.md~" 2>/dev/null; then
    print_status "error" "Found HTTP links in posts (should be HTTPS)"
    exit 1
else
    print_status "success" "No HTTP links found in posts"
fi

# Step 11: Validate sitemap.xml
print_status "info" "Validating sitemap.xml..."
if python3 -c "
import xml.etree.ElementTree as ET
try:
    tree = ET.parse('_site/sitemap.xml')
    root = tree.getroot()
    url_count = len(root)
    print(f'✅ Sitemap contains {url_count} URLs')
    
    # Check for HTTPS URLs
    http_count = 0
    for url in root:
        loc = url.find('{http://www.sitemaps.org/schemas/sitemap/0.9}loc')
        if loc is not None and loc.text.startswith('http://'):
            http_count += 1
    
    if http_count > 0:
        print(f'⚠️  Found {http_count} HTTP URLs in sitemap (should be HTTPS)')
    else:
        print('✅ All URLs in sitemap use HTTPS')
        
except Exception as e:
    print(f'❌ sitemap.xml validation error: {e}')
    exit(1)
"; then
    print_status "success" "sitemap.xml validation passed"
else
    print_status "error" "sitemap.xml validation failed"
    exit 1
fi

# Step 12: Check for common TOML issues
print_status "info" "Checking for common TOML issues..."
if grep -q '"[^"]*"[^"]*"' netlify.toml; then
    print_status "error" "Found potential quote issues in netlify.toml"
    exit 1
fi

if grep -q 'from = [^"]' netlify.toml; then
    print_status "error" "Found unquoted 'from' values in netlify.toml"
    exit 1
fi

if grep -q 'to = [^"]' netlify.toml; then
    print_status "error" "Found unquoted 'to' values in netlify.toml"
    exit 1
fi

print_status "success" "No common TOML issues found"

# Final summary
echo ""
echo "🎉 All CI tests passed locally!"
echo "🚀 Ready to push to GitHub!"
echo ""
echo "Summary:"
echo "  ✅ netlify.toml syntax validated"
echo "  ✅ _config.yml syntax validated"
echo "  ✅ Jekyll build successful"
echo "  ✅ Build artifacts verified"
echo "  ✅ No HTTP links found"
echo "  ✅ sitemap.xml validated"
echo "  ✅ No TOML issues found"
echo ""
echo "You can now safely push your changes to GitHub!"