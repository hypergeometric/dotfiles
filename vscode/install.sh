#!/bin/sh

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

USER_DIR="$HOME/Library/Application Support/Code/User"

if ! [[ -L "$USER_DIR/settings.json" ]]; then
  rm -f ~/Library/Application\ Support/Code/User/settings.json
fi

if ! [[ -L "$USER_DIR/keybindings.json" ]]; then
  rm -f ~/Library/Application\ Support/Code/User/keybindings.json
fi

if ! [[ -L "$USER_DIR/snippets" ]]; then
  rm -rf ~/Library/Application\ Support/Code/User/snippets
fi

ln -snf "$DIRNAME/settings.json.symlink" "$USER_DIR/settings.json"
ln -snf "$DIRNAME/keybindings.json.symlink" "$USER_DIR/keybindings.json"
ln -snf "$DIRNAME/snippets.symlink" "$USER_DIR/snippets"

echo "Installed vscode; Linked settings.json, keybindings.json and snippets/ into ${USER_DIR}."
