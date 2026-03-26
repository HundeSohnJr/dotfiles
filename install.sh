#!/bin/bash
# Dotfiles installer for bobs-skull (Ubuntu 24.04)
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Installing dotfiles from $DOTFILES_DIR..."

# Bash config
echo "Linking .bashrc..."
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"

# Git config (skip if credentials already set)
echo "Linking .gitconfig..."
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Claude Code configs
echo "Setting up Claude Code configs..."
mkdir -p "$HOME/.claude"
ln -sf "$DOTFILES_DIR/claude/settings.json" "$HOME/.claude/settings.json"
ln -sf "$DOTFILES_DIR/claude/settings.local.json" "$HOME/.claude/settings.local.json"

# CLAUDE.md to home dir
ln -sf "$DOTFILES_DIR/CLAUDE.md" "$HOME/CLAUDE.md"

echo "Done. Restart your terminal or run: source ~/.bashrc"
