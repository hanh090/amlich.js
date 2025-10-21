#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  # Ensure the Node.js script is executable
  chmod +x "$CURRENT_DIR/../bin/tmux-lunar-date" 2>/dev/null || true

  # Try to execute the script directly (uses shebang)
  if "$CURRENT_DIR/../bin/tmux-lunar-date" 2>/dev/null; then
    return 0
  fi

  # Fallback: explicitly call node
  if command -v node >/dev/null 2>&1; then
    node "$CURRENT_DIR/../bin/tmux-lunar-date"
  else
    echo "Error: node not found"
    return 1
  fi
}

main
