# cat + pbcopy
cc() { cat "$1" | pbcopy; echo "Copied: $1"; }

# eza config
chpwd() { eza -la --icons --git }
