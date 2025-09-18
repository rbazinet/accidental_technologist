#!/bin/bash

# Extract URLs with share parameters and create redirect rules
echo "# Redirect rules for cleaning up social share parameters"
echo "# Add these to your web server configuration (nginx, Apache, etc.)"
echo ""

# Process the CSV file and extract unique base URLs
grep "?share=" /Users/rbazinet/Downloads/accidentaltechnologist.com-Coverage-Drilldown-2025-09-18/Table.csv | \
  cut -d',' -f1 | \
  while read -r url; do
    # Extract the clean URL (remove everything from ? onwards)
    clean_url=$(echo "$url" | sed 's/?.*//')
    echo "Redirect 301 \"$url\" \"$clean_url\""
  done | sort -u > share-param-redirects.txt

echo "Generated $(wc -l < share-param-redirects.txt) redirect rules in share-param-redirects.txt"

# Also create a list of clean URLs for verification
grep "?share=" /Users/rbazinet/Downloads/accidentaltechnologist.com-Coverage-Drilldown-2025-09-18/Table.csv | \
  cut -d',' -f1 | \
  sed 's/?.*//' | \
  sort -u > clean-urls.txt

echo "Generated $(wc -l < clean-urls.txt) unique clean URLs in clean-urls.txt"