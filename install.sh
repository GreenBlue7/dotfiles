#!/bin/zsh
# Symlink dotfiles to home directory

DOTFILES="$HOME/dotfiles"

files=(
    .zshenv
    .zprofile
    .zshrc
    .zsh_plugins.txt
    .clang-format
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

# zshrc.d
mkdir -p "$HOME/.zshrc.d"
for file in "$DOTFILES/zshrc.d/"*.zsh; do
    name=$(basename "$file")
    ln -sf "$file" "$HOME/.zshrc.d/$name"
    echo "Linked $file → $HOME/.zshrc.d/$name"
done

# sdkman
if [[ ! -d "$HOME/.sdkman" ]]; then
    echo "Installing sdkman..."
    curl -s "https://get.sdkman.io" | bash
    echo "Installed sdkman"
else
    echo "sdkman already installed, skipping"
fi

echo "\nDone."
