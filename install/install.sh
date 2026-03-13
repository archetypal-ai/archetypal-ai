#!/usr/bin/env bash
set -euo pipefail

# ──────────────────────────────────────────────────────────────
# Archetypal AI — Installer
# Install the archetypal CLI on macOS, Linux, or WSL
#
# Usage:
#   curl -fsSL https://archetypal.ai/install.sh | bash
#
# Options:
#   ARCHETYPAL_INSTALL_DIR   Override install directory (default: ~/.local/bin)
#   ARCHETYPAL_VERSION       Install a specific version (default: latest)
# ──────────────────────────────────────────────────────────────

INSTALL_DIR="${ARCHETYPAL_INSTALL_DIR:-$HOME/.local/bin}"
VERSION="${ARCHETYPAL_VERSION:-latest}"
BASE_URL="https://github.com/archetypal-ai/archetypal/releases"
BINARY_NAME="archetypal"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
DIM='\033[2m'
BOLD='\033[1m'
RESET='\033[0m'

info() { echo -e "${DIM}$1${RESET}"; }
success() { echo -e "${GREEN}✓${RESET} $1"; }
error() { echo -e "${RED}✗${RESET} $1" >&2; exit 1; }

# ── Detect platform ──
detect_platform() {
  local os arch

  case "$(uname -s)" in
    Darwin) os="darwin" ;;
    Linux)  os="linux" ;;
    MINGW*|MSYS*|CYGWIN*) error "Use install.ps1 for Windows. Run: irm https://archetypal.ai/install.ps1 | iex" ;;
    *) error "Unsupported operating system: $(uname -s)" ;;
  esac

  case "$(uname -m)" in
    x86_64|amd64)  arch="x64" ;;
    arm64|aarch64) arch="arm64" ;;
    *) error "Unsupported architecture: $(uname -m)" ;;
  esac

  echo "${os}-${arch}"
}

# ── Resolve version ──
resolve_version() {
  if [ "$VERSION" = "latest" ]; then
    VERSION=$(curl -fsSL "${BASE_URL}/latest" -o /dev/null -w '%{redirect_url}' | grep -oE '[^/]+$' || true)
    if [ -z "$VERSION" ]; then
      # Fallback: use npm to check latest version
      VERSION=$(npm view @archetypal-ai/cli version 2>/dev/null || echo "0.1.0")
    fi
  fi
  echo "$VERSION"
}

# ── Download and install ──
install() {
  local platform
  platform=$(detect_platform)

  echo ""
  echo -e "${CYAN}${BOLD}  ◎ Archetypal AI Installer${RESET}"
  echo ""

  info "  Platform: ${platform}"
  info "  Install dir: ${INSTALL_DIR}"

  # Ensure install directory exists
  mkdir -p "$INSTALL_DIR"

  # For now, install via npm (binary distribution comes later)
  if command -v npm &>/dev/null; then
    info "  Installing via npm..."
    npm install -g @archetypal-ai/cli 2>/dev/null || true
    success "Installed archetypal CLI"
  elif command -v pnpm &>/dev/null; then
    info "  Installing via pnpm..."
    pnpm add -g @archetypal-ai/cli 2>/dev/null || true
    success "Installed archetypal CLI"
  else
    error "npm or pnpm is required. Install Node.js 20+ first: https://nodejs.org"
  fi

  # Verify installation
  if command -v archetypal &>/dev/null; then
    local installed_version
    installed_version=$(archetypal --version 2>/dev/null || echo "unknown")
    echo ""
    success "archetypal ${installed_version} installed successfully"
    echo ""
    echo -e "  ${DIM}Get started:${RESET}"
    echo -e "    ${CYAN}archetypal auth login${RESET}    Authenticate"
    echo -e "    ${CYAN}archetypal${RESET}               Start session"
    echo ""
  else
    echo ""
    error "Installation failed. Try: npm install -g @archetypal-ai/cli"
  fi
}

install
