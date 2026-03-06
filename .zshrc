# ~/.zshrc — Interactive shell (every tab/window on macOS)
# Loading order: .zshenv → .zprofile → .zshrc
# Env vars / PATH: see .zprofile and .zshenv


# ── History ──────────────────────────────────────────────
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
setopt append_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt share_history
setopt extended_history


# ── Shell behavior ───────────────────────────────────────
setopt autocd
setopt correct
setopt interactivecomments


# ── Completion ───────────────────────────────────────────
autoload -Uz compinit

# Cache .zcompdump — only regenerate once per day
if [[ -z "$ZSH_COMPDUMP" ]]; then
  ZSH_COMPDUMP="${HOME}/.zcompdump"
fi
if [[ ! -f "$ZSH_COMPDUMP" ]] || [[ $(date +'%j') != $(stat -f '%Sm' -t '%j' "$ZSH_COMPDUMP" 2>/dev/null) ]]; then
  compinit -d "$ZSH_COMPDUMP"
else
  compinit -C -d "$ZSH_COMPDUMP"
fi

setopt complete_in_word
setopt always_to_end
setopt auto_menu
setopt menu_complete

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


# ── Aliases ──────────────────────────────────────────────
if command -v eza &>/dev/null; then
  alias ls="eza --icons --group-directories-first"
  alias ll="eza -la --icons --group-directories-first"
  alias la="eza -a --icons --group-directories-first"
  alias lt="eza -la --icons --tree --level=2"
else
  alias ls="ls -G"
  alias ll="ls -alF"
  alias la="ls -A"
fi

command -v bat &>/dev/null && alias cat="bat --paging=never"
alias grep="grep --color=auto"


# ── Tool integrations ────────────────────────────────────
# zoxide (smart cd)
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"

# fzf (fuzzy finder)
[[ -f "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh" ]] && {
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
}

# fnm (Node.js version manager)
command -v fnm &>/dev/null && eval "$(fnm env --use-on-cd)"


# ── Plugins (Antidote) ───────────────────────────────────
# brew install antidote
# Plugins listed in ~/.zsh_plugins.txt
if [[ -f "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh" ]]; then
  source "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"
  antidote load "${HOME}/.zsh_plugins.txt"
fi


# ── Custom modules ───────────────────────────────────────
# Load all scripts from ~/.zshrc.d/
if [[ -d ~/.zshrc.d ]]; then
  for f in ~/.zshrc.d/*.zsh(N); do
    source "$f"
  done
fi


# ── SDKMAN (must be near end — modifies PATH) ───────────
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"


# ── Starship prompt (must be last — wraps precmd) ───────
eval "$(starship init zsh)"


# ── PATH deduplication ───────────────────────────────────
typeset -U path
