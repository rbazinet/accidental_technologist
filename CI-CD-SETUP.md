# CI/CD Setup for Accidental Technologist

This document explains the CI/CD pipeline setup to prevent deployment issues like the TOML syntax error we encountered.

## What We've Added

### 1. GitHub Actions Workflows

#### `.github/workflows/validate.yml` (Main Workflow)
- **Triggers**: On push to `main` branch and pull requests
- **Validates**: 
  - `netlify.toml` syntax using Python TOML parser
  - `_config.yml` syntax using Python YAML parser
  - Jekyll build process
  - Generated sitemap.xml
  - HTTP links in posts (should be HTTPS)
- **Benefits**: Catches errors before they reach Netlify

#### `.github/workflows/ci.yml` (Comprehensive Workflow)
- **Additional checks**:
  - Link validation
  - Security scanning
  - Deploy preview (requires Netlify tokens)
- **Use**: More thorough validation for important changes

### 2. Local Validation Script

#### `scripts/validate-config.sh`
```bash
# Run before pushing to catch issues locally
./scripts/validate-config.sh
```

**What it checks**:
- TOML syntax validation
- YAML syntax validation
- Common TOML issues (quotes, unquoted values)
- Jekyll build test
- HTTPS URL validation

### 3. Pre-commit Hook

#### `.githooks/pre-commit`
```bash
# Enable the hook
git config core.hooksPath .githooks
```

**What it does**:
- Runs automatically before each commit
- Validates only modified config files
- Prevents committing broken configurations

## How to Use

### Option 1: Use GitHub Actions (Recommended)
1. **Push your changes** - GitHub Actions will automatically validate
2. **Check the Actions tab** in GitHub for validation results
3. **Fix any errors** before merging to main

### Option 2: Local CI Testing (Recommended)
```bash
# Test the entire CI pipeline locally:
./scripts/test-ci-locally.sh

# Test GitHub Actions workflow locally (requires Docker):
./scripts/test-github-actions.sh

# If tests pass, push:
git add .
git commit -m "Your changes"
git push origin main
```

### Option 3: Quick Local Validation
```bash
# Just validate configuration files:
./scripts/validate-config.sh
```

### Option 4: Pre-commit Hook
```bash
# Enable the hook (one-time setup)
git config core.hooksPath .githooks

# Now every commit will validate automatically
git add .
git commit -m "Your changes"  # Validation runs here
```

## What Gets Validated

### TOML Syntax Issues
- ✅ **Fixed**: Nested quotes like `"powerpoint-architects"`
- ✅ **Checked**: Unquoted values
- ✅ **Checked**: Missing required fields
- ✅ **Checked**: Invalid URL patterns

### Jekyll Configuration
- ✅ **Checked**: YAML syntax
- ✅ **Checked**: Required fields (title, url, baseurl)
- ✅ **Checked**: HTTPS URL requirement
- ✅ **Tested**: Build process

### Build Output
- ✅ **Verified**: `_site` directory creation
- ✅ **Verified**: `sitemap.xml` generation
- ✅ **Verified**: `index.html` creation
- ✅ **Validated**: XML sitemap structure

### Common Issues
- ✅ **Checked**: HTTP links in posts (should be HTTPS)
- ✅ **Checked**: Broken image references
- ✅ **Checked**: robots.txt presence
- ✅ **Checked**: Sitemap references

## Error Prevention

### The TOML Error We Fixed
```toml
# ❌ This caused the error:
from = "/2006/04/27/architects-who-don't-write-code-are-"powerpoint-architects"/"

# ✅ This is correct:
from = "/2006/04/27/architects-who-dont-write-code-are-powerpoint-architects/"
```

### Common TOML Issues to Avoid
1. **Nested quotes**: `"text"more text"`
2. **Unquoted values**: `from = /path/` (should be `from = "/path/"`)
3. **Missing fields**: Redirects need `from`, `to`, and `status`
4. **Invalid patterns**: `from` should start with `/` or `http`

## Benefits

### Immediate Benefits
- **Prevents Netlify deployment failures**
- **Catches syntax errors before they reach production**
- **Validates Jekyll build process**
- **Ensures consistent configuration**

### Long-term Benefits
- **Reduces debugging time**
- **Improves site reliability**
- **Maintains SEO best practices**
- **Automates quality checks**

## Troubleshooting

### If GitHub Actions Fail
1. **Check the Actions tab** in GitHub
2. **Look at the error message** in the failed step
3. **Fix the issue locally** using `./scripts/test-ci-locally.sh`
4. **Push the fix** and monitor the Actions tab

### Common GitHub Actions Issues

#### Platform Mismatch Error
```
Your bundle only supports platforms ["arm64-darwin-24"] but your local platform is x86_64-linux
```
**Solution**: Run `bundle lock --add-platform x86_64-linux` and commit the updated `Gemfile.lock`

#### TOML Syntax Error
```
Could not parse configuration file netlify.toml
```
**Solution**: Check for nested quotes or unquoted values in `netlify.toml`

### If Local Validation Fails
```bash
# Install missing dependencies
pip3 install toml pyyaml

# Run validation again
./scripts/validate-config.sh
```

### If Pre-commit Hook Fails
```bash
# Skip the hook for this commit (not recommended)
git commit --no-verify -m "Emergency fix"

# Or fix the issue and commit normally
```

## Next Steps

1. **Enable the pre-commit hook**:
   ```bash
   git config core.hooksPath .githooks
   ```

2. **Test the validation**:
   ```bash
   ./scripts/validate-config.sh
   ```

3. **Push your changes** and watch GitHub Actions validate them

4. **Monitor the Actions tab** for any validation failures

## Files Added
- `.github/workflows/validate.yml` - Main CI workflow
- `.github/workflows/ci.yml` - Comprehensive CI workflow  
- `scripts/validate-config.sh` - Quick local validation script
- `scripts/test-ci-locally.sh` - **Full CI pipeline test locally**
- `scripts/test-github-actions.sh` - **Test GitHub Actions workflow locally**
- `.githooks/pre-commit` - Pre-commit hook
- `CI-CD-SETUP.md` - This documentation

## Local Testing Scripts

### `scripts/test-ci-locally.sh` (Recommended)
**What it does**: Mimics the entire GitHub Actions workflow locally
- ✅ Validates TOML and YAML syntax
- ✅ Tests Jekyll build process
- ✅ Verifies build artifacts
- ✅ Checks for HTTP links
- ✅ Validates sitemap.xml
- ✅ Checks for common TOML issues

**Usage**: `./scripts/test-ci-locally.sh`

### `scripts/test-github-actions.sh`
**What it does**: Uses `act` to run GitHub Actions workflows locally with Docker
- ✅ Tests actual GitHub Actions workflow
- ✅ Uses same environment as GitHub
- ✅ Requires Docker to be running

**Usage**: `./scripts/test-github-actions.sh`

### `scripts/validate-config.sh`
**What it does**: Quick validation of configuration files only
- ✅ Validates TOML and YAML syntax
- ✅ Tests Jekyll build
- ✅ Checks for common issues

**Usage**: `./scripts/validate-config.sh`

This setup ensures that configuration errors like the TOML syntax issue are caught early and never reach production!