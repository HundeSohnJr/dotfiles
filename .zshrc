# Starship Prompt
eval "$(starship init zsh)"

# Nützliche Aliases
alias ll="ls -lah"
alias la="ls -A"
alias l="ls -CF"
alias gs="git status"
alias gp="git pull"
alias gc="git commit"
alias gco="git checkout"
alias gaa="git add --all"

# Claude Code Helper
alias cc="claude code"

# Bessere History
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Auto-completion
autoload -U compinit && compinit
