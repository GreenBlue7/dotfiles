# ~/.zprofile — Login shell setup (runs once per terminal tab on macOS)
# Purpose: Homebrew, PATH, environment variables
# On macOS every new tab/window = login shell, so this always runs.

# ---------- Homebrew ----------
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------- JetBrains Toolbox CLI ----------
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# ---------- Editor ----------
export EDITOR="code --wait"
export VISUAL="$EDITOR"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
