#!/bin/sh

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -snf "${DIRNAME}/zsh/zfunctions.symlink" "${HOME}/.zfunctions"
ln -snf "${DIRNAME}/zsh/zshrc.symlink" "${HOME}/.zshrc"

ln -snf "${DIRNAME}/git/gitconfig.symlink" "${HOME}/.gitconfig"
ln -snf "${DIRNAME}/git/gitignore.symlink" "${HOME}/.gitignore"

cp "${DIRNAME}/iterm/com.googlecode.iterm2.plist" "${HOME}/Library/Preferences/"

ln -snf "${DIRNAME}/editorconfig/editorconfig.symlink" "${HOME}/.editorconfig"
