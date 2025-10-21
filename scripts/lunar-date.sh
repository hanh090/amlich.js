#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  node "$CURRENT_DIR/../bin/tmux-lunar-date"
}

main
