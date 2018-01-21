#!/usr/bin/env bash

set -o nounset -o pipefail -o errexit

directories=( ".emacs.d" )
for dirname in "${directories[@]}"
do
    mkdir -p "~/${dirname}"
done

files=( 
    ".bash_aliases"
    ".bash_completions"
    ".bash_exports"
    ".bash_functions"
    ".bash_paths"
    ".bash_profile"
    ".bash_prompt"
    ".emacs.d/init.el"
    ".gitconfig"
)

for filename in "${files[@]}"
do
    rm -f "~/${filename}"
    cp "${filename}" ~/
done

cp gitignore ~/.gitignore
