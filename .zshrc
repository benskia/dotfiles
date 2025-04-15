# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##### PLUGINS #####

# antidote
source /usr/share/zsh-antidote/antidote.zsh
antidote load $HOME/.zsh_plugins.txt


##### OPTIONS #####

autoload -Uz compinit && compinit

# tab expansion improvements
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


##### EXPORTS #####

# personal
export PATH=$PATH:$HOME/bin/

# go
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:$HOME/go/bin/


##### ALIASES #####

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


##### BINDS #####

# terminal
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[3~" delete-char

# execution
bindkey -s "^F" "^Utmux-sessionizer.sh^M"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
