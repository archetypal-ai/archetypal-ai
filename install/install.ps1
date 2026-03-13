# ──────────────────────────────────────────────────────────────
# Archetypal AI — Windows Installer (PowerShell)
# Install the archetypal CLI on Windows
#
# Usage:
#   irm https://archetypal.ai/install.ps1 | iex
# ──────────────────────────────────────────────────────────────

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "  ◎ Archetypal AI Installer" -ForegroundColor Cyan
Write-Host ""

# Check for npm
if (Get-Command npm -ErrorAction SilentlyContinue) {
    Write-Host "  Installing via npm..." -ForegroundColor DarkGray
    npm install -g @archetypal-ai/cli
} elseif (Get-Command pnpm -ErrorAction SilentlyContinue) {
    Write-Host "  Installing via pnpm..." -ForegroundColor DarkGray
    pnpm add -g @archetypal-ai/cli
} else {
    Write-Host "  Error: npm or pnpm required. Install Node.js 20+: https://nodejs.org" -ForegroundColor Red
    exit 1
}

# Verify
if (Get-Command archetypal -ErrorAction SilentlyContinue) {
    $version = archetypal --version 2>$null
    Write-Host ""
    Write-Host "  ✓ archetypal $version installed successfully" -ForegroundColor Green
    Write-Host ""
    Write-Host "  Get started:" -ForegroundColor DarkGray
    Write-Host "    archetypal auth login    Authenticate" -ForegroundColor Cyan
    Write-Host "    archetypal               Start session" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host "  ✗ Installation failed. Try: npm install -g @archetypal-ai/cli" -ForegroundColor Red
}
