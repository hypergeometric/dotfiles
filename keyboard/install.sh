#!/bin/sh

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

USER_DIR="$HOME/Library/Keyboard Layouts"

for file in *.symlink; do
  ln -snf "$DIRNAME/$file" "$USER_DIR/${file%.symlink}"
done

echo "Installed keyboard layouts in $USER_DIR"


