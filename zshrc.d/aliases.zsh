# ~/.zshrc.d/aliases.zsh — Project & tool aliases (macOS)

# ---------- Gemini CLI ----------
alias gemini-cli='npx https://github.com/google-gemini/gemini-cli'

# ---------- Directory shortcuts ----------
alias dev='cd ~/dev'
alias kiroku='cd ~/dev/projects/kiroku'
alias obsd='cd ~/obsidian_vault'
alias ocr='cd ~/dev/projects/ocr-system'
alias schl='cd ~/dev/school'

# ---------- IDE launchers ----------
# JetBrains IDE shortcuts are configured in JetBrains Toolbox


# ---------- macOS-specific shortcuts ----------
# Quick Look from terminal (Space-bar preview without opening)
alias ql='qlmanage -p'

# Flush DNS cache
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# Show/hide hidden files in Finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

# Copy current directory path
alias cpwd='pwd | pbcopy'

# IP addresses
alias myip='curl -s https://ifconfig.me'
alias localip='ipconfig getifaddr en0'

# Open current dir in Finder
alias finder='open .'

# Lock screen
alias afk='pmset displaysleepnow'

# Brew shortcuts
alias bup='brew update && brew upgrade && brew cleanup && brew doctor && brew list'

# cat + pbcopy
cc() { cat "$1" | pbcopy; echo "Copied: $1"; }
