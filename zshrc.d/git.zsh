# ~/.zshrc.d/git.zsh — Git shortcuts
#
# For global git config, see: git config --global --list
# lazygit (install: brew install lazygit) is recommended for TUI

alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend --no-edit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gds='git diff --staged'
alias glog='git log --oneline --graph --decorate -20'
alias gb='git branch --sort=-committerdate'
alias gsw='git switch'
alias gsc='git switch -c'

# lazygit
if command -v lazygit &>/dev/null; then
  alias lg='lazygit'
fi
