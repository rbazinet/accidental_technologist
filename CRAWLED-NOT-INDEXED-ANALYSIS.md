# Crawled - Currently Not Indexed Analysis

## Issue Summary
Google is crawling URLs but choosing not to index them. This analysis identifies the patterns and provides solutions.

## URL Patterns Being Crawled But Not Indexed

### 1. **URLs with Share Parameters** (Most Common Issue)
**Examples:**
- `https://accidentaltechnologist.com/programming/gone-are-the-days-of-simple-developer-tools/?share=tumblr&nb=1`
- `https://accidentaltechnologist.com/ruby/ruby-ruby-everywhere/?share=tumblr&nb=1`
- `https://accidentaltechnologist.com/podcast/my-updated-developer-podcast-list/?share=tumblr&nb=1`

**Why not indexed:** These are duplicate content with tracking parameters
**Status:** ✅ **CORRECTLY BLOCKED** by robots.txt and redirected by netlify.toml

### 2. **HTTP URLs** (Legacy Issue)
**Examples:**
- `http://accidentaltechnologist.com/technology/finally-getting-twitter/`
- `http://www.accidentaltechnologist.com/technology/finally-getting-twitter/`
- `http://accidentaltechnologist.com/general/finding-work-as-a-freelance-software-developer/`

**Why not indexed:** HTTP URLs are redirected to HTTPS
**Status:** ✅ **CORRECTLY HANDLED** by redirects

### 3. **Feed URLs** (RSS Feeds)
**Examples:**
- `https://accidentaltechnologist.com/tag/mac-app-store/feed/`
- `https://accidentaltechnologist.com/tag/jquery/feed/`
- `https://accidentaltechnologist.com/category/status/feed/`

**Why not indexed:** RSS feeds don't need to be indexed
**Status:** ✅ **CORRECTLY BLOCKED** by robots.txt

### 4. **Pagination URLs with Parameters**
**Examples:**
- `https://accidentaltechnologist.com/page/4/`
- `https://accidentaltechnologist.com/page/36/?ref=https://devpick.io`
- `https://accidentaltechnologist.com/page/9/?ak_action=reject_mobile`

**Why not indexed:** Some have tracking parameters, others are duplicate content
**Status:** ⚠️ **MIXED** - Clean pagination should be indexed, parameterized ones should not

### 5. **Tag and Category Pages**
**Examples:**
- `https://accidentaltechnologist.com/tag/redcar/`
- `https://accidentaltechnologist.com/tag/mac-app-store/`
- `https://accidentaltechnologist.com/category/ruby/page/3/`

**Why not indexed:** Previously blocked by robots.txt (now fixed)
**Status:** ✅ **SHOULD BE INDEXED** - We unblocked these

### 6. **Image Files** (Legacy WordPress)
**Examples:**
- `https://accidentaltechnologist.com/nopackagemanager-png/`
- `https://accidentaltechnologist.com/ignoredpackagemanager-png/`
- `https://accidentaltechnologist.com/2018-01-10_14-44-09-png/`

**Why not indexed:** These appear to be broken image URLs
**Status:** ❌ **PROBLEMATIC** - These should return 404 or redirect

### 7. **WordPress Legacy URLs**
**Examples:**
- `https://accidentaltechnologist.com/wp-json/`
- `https://accidentaltechnologist.com/infrastructure/fixing-out-of-diskspace-errors-on-amazon-ec2/attachment/cleanshot-2021-04-16-at-16-27-png/`

**Why not indexed:** WordPress legacy paths that don't exist in Jekyll
**Status:** ❌ **PROBLEMATIC** - These should return 404

## Issues That Need Fixing

### **HIGH PRIORITY** 🔴

#### 1. **Broken Image URLs**
**Problem:** URLs like `/nopackagemanager-png/` are being crawled but don't exist
**Solution:** Add redirects to return 404 or redirect to proper images

#### 2. **WordPress Legacy URLs**
**Problem:** `/wp-json/` and attachment URLs are being crawled
**Solution:** Add redirects to return 404

### **MEDIUM PRIORITY** 🟡

#### 3. **Clean Pagination URLs**
**Problem:** Some pagination URLs without parameters might not be indexed
**Solution:** Ensure pagination pages are properly structured

## Recommended Fixes

### 1. **Add Redirects for Broken URLs**
```toml
# Redirect broken image URLs to 404
[[redirects]]
  from = "/*-png/"
  to = "/404.html"
  status = 404

# Redirect WordPress legacy URLs to 404
[[redirects]]
  from = "/wp-json/*"
  to = "/404.html"
  status = 404

[[redirects]]
  from = "/*/attachment/*"
  to = "/404.html"
  status = 404
```

### 2. **Improve Pagination Structure**
Ensure pagination pages have proper:
- Meta descriptions
- Canonical URLs
- Internal linking

### 3. **Monitor Results**
- Watch for reduction in "crawled but not indexed" errors
- Monitor indexing of tag/category pages
- Check that broken URLs return proper 404s

## Current Status Summary

### ✅ **Correctly Not Indexed (Good)**
- URLs with share parameters (duplicate content)
- HTTP URLs (redirected to HTTPS)
- Feed URLs (RSS feeds)
- URLs with tracking parameters

### ⚠️ **Should Be Indexed (Fixed)**
- Tag pages (unblocked in robots.txt)
- Category pages (unblocked in robots.txt)
- Clean pagination pages (unblocked in robots.txt)

### ❌ **Problematic (Need Fixing)**
- Broken image URLs
- WordPress legacy URLs
- Attachment URLs

## Expected Results After Fixes

1. **Reduced "crawled but not indexed" errors**
2. **Better indexing of tag/category pages**
3. **Proper 404 responses for broken URLs**
4. **Cleaner crawl budget usage**

The majority of "crawled but not indexed" URLs are actually correctly handled - they're duplicates with tracking parameters that shouldn't be indexed. The real issues are the broken image and WordPress legacy URLs that need proper 404 responses.