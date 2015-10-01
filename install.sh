#!/bin/bash

files=$(cat <<EOF
gitconfig
zsh
zshrc
EOF
)

function symlink {
  name=$1
  target=${2:-"$HOME/.$name"}
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [[ $name != *~  && $name != *.orig && $name != \#*\# ]]; then
        if [[ $name == *.local ]]; then
          echo "added local file $target"
          cp "$PWD/$name" "$target"
        else
          echo "linked in $target"
          ln -s "$PWD/$name" "$target"
        fi
    fi
  fi
}


for name in $files; do
  symlink $name
done

symlink Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
