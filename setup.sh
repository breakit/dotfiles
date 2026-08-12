#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

for app in nvim fish zellij; do
  target="$CONFIG_DIR/$app"
  source="$DOTFILES_DIR/$app"
  if [ -L "$target" ] || [ -e "$target" ]; then
    echo "skip: $target already exists"
  else
    ln -s "$source" "$target"
    echo "linked: $target -> $source"
  fi
done