# ~/.zshrc.d/python.zsh — Python helpers (macOS)
#
# Python version & venv managed by uv (install: brew install uv)
# ML-specific envs managed by Miniforge/conda (install: brew install miniforge)

# uv: create and activate venv in one command
uvenv() {
  local name="${1:-.venv}"
  uv venv "$name" && source "$name/bin/activate"
}

# Quick activate: looks for .venv in current or parent dirs
activate() {
  local dir="$PWD"
  while [[ "$dir" != "/" ]]; do
    if [[ -f "$dir/.venv/bin/activate" ]]; then
      source "$dir/.venv/bin/activate"
      echo "Activated: $dir/.venv"
      return 0
    fi
    dir="$(dirname "$dir")"
  done
  echo "No .venv found in current or parent directories" >&2
  return 1
}

# Conda quick switch (if miniforge is installed)
if command -v conda &>/dev/null; then
  alias ca='conda activate'
  alias cda='conda deactivate'
fi
