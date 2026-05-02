# ~/.zshrc.d/aliases.zsh — Project & tool aliases (macOS)

# ---------- Gemini CLI ----------
alias gemini-cli='npx https://github.com/google-gemini/gemini-cli'

# ---------- Directory shortcuts ----------
alias dev='cd ~/dev'
alias kiroku='cd ~/dev/web/kiroku'
alias obsd='cd ~/dev/obsidian_vault'
alias capstone='cd ~/dev/web/DreamSix'

# ---------- IDE launchers ----------
# JetBrains Toolbox installs CLI launchers to:
#   ~/.local/share/JetBrains/Toolbox/scripts/
# Enable in Toolbox: Settings → Generate shell scripts → path above
# Then these just work:
alias idea='open -a "IntelliJ IDEA"'      # GUI open (always works)
# Or if Toolbox CLI scripts are on PATH:
# alias idea='idea'                        # CLI launcher

# Open current dir in VS Code / Cursor
alias c='code .'
alias cr='cursor .'

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
