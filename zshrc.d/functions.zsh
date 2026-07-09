# cat + pbcopy
cc() { cat "$1" | pbcopy; echo "Copied: $1"; }
