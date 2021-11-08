# === Exports ===
# Oh-my-zsh
export ZSH="/Users/alex_kovalev/.oh-my-zsh"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# .NET Core SDK tools
export PATH="$PATH:/Users/alex_kovalev/.dotnet/tools"

# sbin
export PATH="/usr/local/sbin:$PATH"

# tex
export PATH="/usr/local/texlive/2020/bin/x86_64-darwin:$PATH"

# === Plugins ===
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_THEME="spaceship"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white,bg=transparent,bold,underline"

# === Oh-my-zsh init ===
source $ZSH/oh-my-zsh.sh

# === Aliases ===
# vscode insiders
# issue with double icons in the Doc(https://github.com/microsoft/vscode/issues/60579)
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

# colorls
alias ls='colorls'

# git
alias gs='git status'
alias glol='git log --oneline'
alias ga='git add'
alias gcm='git commit -m'
alias gb='git branch'
alias gc='git checkout'
alias gp='git push'
alias gpu='git push -u origin'
alias grc="git reset --hard && git clean -fd"

# npm
alias ns='npm start'
alias npm_g_ls='npm -g ls'

# yarn
alias y='yarn'
alias ys='yarn start'
alias ya='yarn add'
alias yr='yarn run'
alias yrm='yarn remove'
alias yarn_g_ls='yarn global list'

# pnpm
alias pn='pnpm'
alias px='pnpx'
alias pn_g_ls='pn -g ls'

# archives
alias untar='tar -xvzf $1'

# === spaceship-prompt ===
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

# === rbenv & colorls ===
# since `colorls` its a gem we need to setup ruby env
eval "$(rbenv init -)"
source $(dirname $(gem which colorls))/tab_complete.sh

# === custom commands ===
mkcd () {
  if [ -z "$1" ]; then
    echo "Usage: mkcd <dirname>"
    return 1
  fi
  mkdir -p "$1"
  cd "$1" || return
}
