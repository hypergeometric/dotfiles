#!/bin/sh

function _brew_cask_install() {
  if ! brew cask ls --versions $1 >/dev/null 2>&1; then
    brew cask install $1
  fi
}

_brew_cask_install 1password
_brew_cask_install appcleaner
_brew_cask_install dropbox
_brew_cask_install github-desktop
_brew_cask_install google-chrome
_brew_cask_install iterm2
_brew_cask_install spectacle
_brew_cask_install sublime-text
_brew_cask_install visual-studio-code

brew tap caskroom/drivers
_brew_cask_install scansnap-manager-s1300

brew cask cleanup
