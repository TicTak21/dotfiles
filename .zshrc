# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/alex_kovalev/.oh-my-zsh"

# PostrgeSQL
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/12/bin"

# Flutter
export PATH="$PATH:/Users/alex_kovalev/Desktop/Projects/Flutter/flutter/bin"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# .NET Core SDK tools
export PATH="$PATH:/Users/alex_kovalev/.dotnet/tools"

# sbin
export PATH="/usr/local/sbin:$PATH"

ZSH_THEME="spaceship"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# === Aliases ===
# vscode insiders
# issue with double icons in doc(https://github.com/microsoft/vscode/issues/60579)
# alias code="code-insiders -r"
alias code='open -b com.microsoft.VSCodeInsiders "$@"'

# JetBrains Rider
alias rider='open -na "Rider.app" --args "$@"'

# sublime
alias subl="open -a /Applications/Sublime\ Text.app"

# zsh
alias zshconfig="code ~/.zshrc"
alias zshhistory="code $HISTFILE"
alias clc="clear"
alias t="touch"

# ip
alias external_ip="curl ipinfo.io/ip"
alias local_ip="ipconfig getifaddr en0"

# colorls
alias ls='colorls'

# git
alias gs='git status'

alias gl='git log'
alias glol='git log --oneline'

alias gaa='git add .'
alias ga='git add'

alias gc='git commit'
alias gcm='git commit -m'

alias gb='git branch'
alias gc='git checkout'

alias gp='git push'
alias gpu='git push -u origin master'

alias grc="git reset --hard && git clean -fd"

# npm
alias ns='npm start'
alias nb='npm build'
alias npm_g_list='npm list -g --depth 0'

# yarn
alias y='yarn'
alias ys='yarn start'
alias ya='yarn add'
alias yr='yarn run'
alias yrm='yarn remove'
alias yarn_g_list='yarn global list'

# pnpm
alias pn='pnpm'

# pnpx
alias px='pnpx'

# mysql
alias mysql='/usr/local/mysql/bin/mysql -uroot -p'

# rust
alias c='cargo'
alias cr='cargo run'
alias cb='cargo build'
alias ct='cargo test'

# postgresql
alias psqlconfig='code ~/Library/ApplicationSupport/Postgres/var-12/postgresql.conf'
alias pgconfig='code ~/Library/ApplicationSupport/Postgres/var-12/pg_hba.conf'

# disc usage
# 1) folder size
alias calc_folder_size='du -hs'

# === spaceship-prompt ===
autoload -U promptinit
promptinit
prompt spaceship
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white,bg=transparent,bold,underline"

unsetopt PROMPT_SP

SPACESHIP_DOCKER_SHOW=false

SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_SUFFIX=' | '

SPACESHIP_DIR_PREFIX=''
SPACESHIP_DIR_COLOR=green

SPACESHIP_GIT_BRANCH_PREFIX="(${SPACESHIP_GIT_SYMBOL}"
SPACESHIP_GIT_BRANCH_SUFFIX=')'
SPACESHIP_GIT_BRANCH_COLOR=blue

# SPACESHIP_CHAR_SYMBOL="🚀 "
SPACESHIP_CHAR_SYMBOL="¯\_(ツ)_/¯ "

# === Z-plugin ===
. /usr/local/etc/profile.d/z.sh

# === tipz ===
source /Users/alex_kovalev/tipz/tipz.zsh
TIPZ_TEXT="💡"

# === rbenv ===
eval "$(rbenv init -)"

# === colorls ===
source $(dirname $(gem which colorls))/tab_complete.sh

# === fzf ===
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# === custom commands ===
mkcd () {
  if [ -z "$1" ]; then
    echo "Usage: mkcd <dirname>"
    return 1
  fi
  mkdir -p "$1"
  cd "$1" || return
}
