#!/bin/zsh
# Symlink dotfiles to home directory

DOTFILES="$HOME/dotfiles"

files=(
    .zshenv
    .zprofile
    .zshrc
    .zsh_plugins.txt
    .clang-format
    .gitconfig
    .gitignore_global
)

for file in "${files[@]}"; do
    src="$DOTFILES/$file"
    dst="$HOME/$file"

    if [ -f "$dst" ] && [ ! -L "$dst" ]; then
        echo "Backing up $dst → $dst.bak"
        mv "$dst" "$dst.bak"
    fi

    ln -sf "$src" "$dst"
    echo "Linked $src → $dst"
done

# SSH config
mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"
ln -sf "$DOTFILES/ssh_config" "$HOME/.ssh/config"
echo "Linked $DOTFILES/ssh_config → $HOME/.ssh/config"

# .config (Ghostty)
mkdir -p "$HOME/.config/ghostty"
ln -sf "$DOTFILES/config/ghostty/config" "$HOME/.config/ghostty/config"
echo "Linked $DOTFILES/config/ghostty/config → $HOME/.config/ghostty/config"

# .config (starship)
mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/config/starship/starship.toml" "$HOME/.config/starship.toml"
echo "Linked $DOTFILES/config/starship/starship.toml → $HOME/.config/starship.toml"

# .config (Neovim)
ln -sf "$DOTFILES/config/nvim" "$HOME/.config/nvim"
echo "Linked $DOTFILES/config/nvim → $HOME/.config/nvim"

# sdkman
if [[ ! -d "$HOME/.sdkman" ]]; then
    echo "Installing sdkman..."
    curl -s "https://get.sdkman.io" | bash
    echo "Installed sdkman"
else
    echo "sdkman already installed, skipping"
fi

echo "\nDone."
