#!/bin/sh

function install() {
  if ! brew cask ls --versions $1 >/dev/null 2>&1; then
    brew cask install $1
  fi
}

install appcleaner
install github-desktop
install google-chrome
install iterm2
install sublime-text
install visual-studio-code

brew cask cleanup
