# ~/.zshrc.d/aliases.zsh — Project & tool aliases (macOS)

# ---------- Gemini CLI ----------
alias gemini-cli='npx https://github.com/google-gemini/gemini-cli'

# ---------- Directory shortcuts ----------
alias dev='cd ~/dev'
alias kiroku='cd ~/dev/web/kiroku'
alias obsd='cd ~/dev/obsidian_vault'
alias capstone='cd ~/dev/web/DreamSix'
alias schl='cd ~/dev/school'

# ---------- IDE launchers ----------
# JetBrains IDE shortcuts are configured in JetBrains Toolbox

# Open current dir in VS Code / Cursor
alias c='code .'

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

# Copy file contents to clipboard
cc() { cat "$1" | pbcopy; echo "Copied: $1"; }
