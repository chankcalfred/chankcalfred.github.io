#!/usr/bin/env bash
set -e

# Path to your academicpages repo
PROJECT_DIR="/Users/alfred/Works/chankcalfred.github.io"

# Use Homebrew Ruby bundler (or just "bundle" if your PATH is set)
BUNDLE="/opt/homebrew/opt/ruby/bin/bundle"

cd "$PROJECT_DIR"

echo "Building site once with Jekyll..."
"$BUNDLE" exec jekyll build
echo "Build finished. Opening _site/index.html in your default browser..."

# On macOS, 'open' launches the default web browser for .html
open _site/index.html
