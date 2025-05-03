# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.hyde.zshrc - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

##### PLUGINS #####
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information


##### EXPORTS #####

# personal
export PATH=$PATH:$HOME/bin/

# go
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:$HOME/go/bin/
GOPATH=$HOME/go


##### ALIASES #####

# change directories
alias ..='cd ..'
alias ...='cd ../..'

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

