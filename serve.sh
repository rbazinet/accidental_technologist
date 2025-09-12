#!/bin/bash

# Jekyll Development Server with Sass Warnings Suppressed
# This script starts the Jekyll development server with Sass deprecation warnings silenced
# The warnings come from the Minima theme using deprecated @import syntax

set -e  # Exit on any error

# Check if we're in the right directory
if [ ! -f "_config.yml" ]; then
    echo "Error: _config.yml not found. Are you in the Jekyll site directory?"
    exit 1
fi

# Check if bundle is available
if ! command -v bundle &> /dev/null; then
    echo "Error: 'bundle' command not found. Please install bundler: gem install bundler"
    exit 1
fi

# Check if dependencies are installed
if [ ! -f "Gemfile.lock" ]; then
    echo "Installing dependencies..."
    bundle install
fi

# Kill any existing Jekyll processes to prevent port conflicts
echo "Checking for existing Jekyll processes..."
pkill -f "jekyll serve" 2>/dev/null || true

# Wait a moment for processes to terminate
sleep 2

echo "Starting Jekyll development server..."
echo "Suppressing Sass deprecation warnings from Minima theme..."
echo "Server will be available at: http://localhost:4000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Export environment variables for development and start Jekyll
export SASS_SILENCE_DEPRECATIONS="import,color-functions,global-builtin"
export JEKYLL_ENV="development"

# Try with LiveReload first, fall back to basic serve if it fails
if ! bundle exec jekyll serve --port 4000 --host 0.0.0.0 --livereload 2>/dev/null; then
    echo ""
    echo "LiveReload failed (port conflict), starting without LiveReload..."
    bundle exec jekyll serve --port 4000 --host 0.0.0.0
fi