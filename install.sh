#!/bin/sh

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILES=(
  editorconfig
  gitconfig
  gitignore
  zshrc
)

for file in "${FILES[@]}"; do
  ln -snf "$DIRNAME/.$file" "$HOME/.$file"
  echo "Linked .$file into $HOME"
done

INSTALLS=(
  antibody
  keyboard
  macos
  vscode
)

export DOTFILES="$DIRNAME"

for install in "${INSTALLS[@]}"; do
  (exec "${DIRNAME}/${install}/install.sh")
done
