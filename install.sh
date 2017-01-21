#!/bin/sh

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -snf "${DIRNAME}/zsh/zfunctions.symlink" "${HOME}/.zfunctions"
ln -snf "${DIRNAME}/zsh/zshrc.symlink" "${HOME}/.zshrc"

ln -snf "${DIRNAME}/git/gitconfig.symlink" "${HOME}/.gitconfig"
ln -snf "${DIRNAME}/git/gitignore.symlink" "${HOME}/.gitignore"

ln -snf "${DIRNAME}/editorconfig/editorconfig.symlink" "${HOME}/.editorconfig"
