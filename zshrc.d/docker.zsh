# ~/.zshrc.d/docker.zsh — Docker & OrbStack shortcuts

# Docker compose (v2 — space, not hyphen)
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f'
alias dcr='docker compose restart'
alias dcps='docker compose ps'

# Docker shortcuts
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dimg='docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"'
alias dprune='docker system prune -af --volumes'

# OrbStack Linux VMs (if installed)
if command -v orb &>/dev/null; then
  alias orbsh='orb shell'
fi
