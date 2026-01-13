#!/bin/bash
echo "🚀 Installing dotfiles..."

# Starship installieren
if ! command -v starship &> /dev/null; then
    echo "📦 Installing Starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# Symlinks erstellen
echo "🔗 Creating symlinks..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.config
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

# Zsh als default (falls noch nicht)
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "🐚 Setting zsh as default shell..."
    sudo chsh -s $(which zsh) $(whoami) 2>/dev/null || true
fi

echo "✅ Dotfiles installed successfully!"
echo "🔄 Restart your terminal or run: source ~/.zshrc"
