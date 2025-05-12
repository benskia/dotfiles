plugins=(
    "sudo"
    "git"                     # (default)
    "zsh-autosuggestions"     # (default)
    "zsh-syntax-highlighting" # (default)
)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"


##### OPTIONS #####

##### EXPORTS #####

# personal
export PATH=$PATH:$HOME/bin/

# go
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:$HOME/go/bin/
GOPATH=$HOME/go

# zig
export PATH=$PATH:/usr/local/zig


##### ALIASES #####

# directories
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -p'

# personal
alias cdpr='cd $HOME/Workspaces/github.com/benskia/'

# neovim
alias vi='nvim'
alias vim='nvim'

# zsh
alias zc='nvim $HOME/.zshrc'
alias zr='source $HOME/.zshrc'

# lsd
alias ls='lsd -l'
alias lsa='lsd -la'
alias lst='lsd --tree'

# wl-clipboard
alias wlc='wl-copy'
alias wlp='wl-paste -t "text/plain;charset=utf-8"'
alias wlcb='wl-clipboard'

# tmux
alias tma='tmux a'
alias tml='tmux ls'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gb='git branch'
alias gl='git --no-pager log -n 10 --oneline'
alias gr='git reset'
alias gsw='git switch'
alias gcl='git clone'
alias gra='git remote add origin'
alias gpu='git push origin main'
alias gpl='git pull origin main'

# github-cli
alias ghcl='gh repo clone'
alias ghls='gh repo list'

# python
alias py='python3'

# rust/cargo
alias crn='cargo new'
alias crb='cargo build'
alias crr='cargo run'
alias crd='cargo doc --open'

# snapper
alias snh='sudo snapper -c home'
alias snr='sudo snapper -c root'


##### BINDS #####

# terminal
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[3~" delete-char

# execution
bindkey -s "^F" "^Utmux-sessionizer.sh^M"
