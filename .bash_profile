#!/bin/bash

# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_aliases,bash_completions,bash_exports,bash_functions,bash_paths,bash_prompt,dockerfunc,extra}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done
unset file

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Make xhost less secure.
#xhost + 127.0.0.1 > /dev/null
