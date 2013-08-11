# zsh Settings
# source ~/.zshrc

# 環境変数
# init.el (server-start)
export EDITOR=emacsclient
export LANG=ja_JP.UTF-8
# lsに色をつける
export CLICOLOR=true

bindkey -e

## compinit
autoload -U compinit
compinit

# cd -tabでディレクトリパスの履歴補完
setopt auto_pushd
# リストを詰めて表示
setopt list_packed
# ビープ音を止める
setopt nolistbeep

# emacsのエイリアス
alias emacs='emacs -nw'
