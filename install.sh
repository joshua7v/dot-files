#!/bin/sh

APP_NAME='dot-files'
[ -z "$VIM_PATH" ] && DOT_PATH="$HOME/.dot-files"
[ -z "$REPO_URI" ] && REPO_URI='https://github.com/joshua7v/dot-files.git'

msg() {
    printf '\t---> %b\n' "$1" >&2
}

success() {
    msg "\33[32m ✔ \33[0m ${1}${2}"
}

error() {
    msg "\33[31m ✘ \33[0m ${1}${2}"
    exit 1
}

warn() {
    msg "\33[33m ⚠ \33[0m ${1}${2}"
}

info() {
    msg "\33[32m ➜ \33[0m ${1}${2}"
}

lnif() {
    if [ ! -e $2 ] ; then
        ln -s $1 $2
    fi
}

if [ ! -e "DOT_PATH" ]; then
    info "clone dot-files to $DOT_PATH"
    mkdir -p "$DOT_PATH"
    git clone "$REPO_URI" "$DOT_PATH"
    ret="$?"
    success "Successfully cloned $APP_NAME"
else
    info "update dot-files in $DOT_PATH"
    cd "$DOT_PATH" && git pull origin
    ret="$?"
    success "Successfully updated $APP_NAME"
fi

info "backing up current configrations"
today=`date +%Y%m%d`
mv $HOME/.bash_profile $HOME/.bash_profile.$today
mv $HOME/.bashrc $HOME/.bashrc.$today
mv $HOME/.tmux.conf $HOME/.tmux.conf.$today
mv $HOME/.npmrc $HOME/.npmrc.$today
success "successfully backed up your configurations"

info "setting up symlinks"
lnif $DOT_PATH/bash_profile $HOME/.bash_profile
lnif $DOT_PATH/bashrc $HOME/.bashrc
lnif $DOT_PATH/tmux.conf $HOME/.tmux.conf
lnif $DOT_PATH/npmrc $HOME/.npmrc
lnif $DOT_PATH/vifm $HOME/.vifm
success "successfully created symbol links"
