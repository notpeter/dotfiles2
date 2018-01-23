#!/usr/bin/env bash

set -o nounset -o pipefail -o errexit

mkdir -p ~/.emacs.d/

files=( 
    ".bash_aliases"
    ".bash_completions"
    ".bash_exports"
    ".bash_functions"
    ".bash_paths"
    ".bash_profile"
    ".bash_prompt"
    ".gitconfig"
    ".gitignore-global"
    ".emacs.d/init.el"
)

for filename in "${files[@]}"
do
    ln -nsf ~/.dotfiles/"${filename}" ~/"${filename}"
done

source ~/.bash_profile
