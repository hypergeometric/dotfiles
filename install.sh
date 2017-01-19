#!/bin/sh

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -snf "${DOTFILES_DIR}/zsh/zfunctions.symlink" "${HOME}/.zfunctions"
ln -snf "${DOTFILES_DIR}/zsh/zshrc.symlink" "${HOME}/.zshrc"

ln -snf "${DOTFILES_DIR}/git/gitconfig.symlink" "${HOME}/.gitconfig"
ln -snf "${DOTFILES_DIR}/git/gitignore.symlink" "${HOME}/.gitignore"

cp "${DOTFILES_DIR}/iterm/com.googlecode.iterm2.plist" "${HOME}/Library/Preferences/"

ln -snf "${DOTFILES_DIR}/editorconfig/editorconfig.symlink" "${HOME}/.editorconfig"
