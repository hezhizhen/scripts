#!/usr/bin/env sh

root=$(ghq root)
repository=$(ghq list | fzf)
fullpath="$root/$repository"

goland $fullpath
