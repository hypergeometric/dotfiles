#!/bin/sh

# Install Homebrew or update and upgrade existing formulae.
if ! type brew >/dev/null; then
  /usr/bin/ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
    </dev/null
else
  brew update
  brew upgrade
fi

# Install GNU utilities (those that come with macOS are outdated).
brew install coreutils
brew install findutils --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names

# Install Zsh and set as default shell.
brew install zsh
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/zsh
fi

# Install more recent versions of some macOS tools.
brew tap homebrew/dupes
brew install homebrew/dupes/diffutils
brew install homebrew/dupes/grep --with-default-names
brew install homebrew/dupes/gzip
brew install homebrew/dupes/nano
brew install homebrew/dupes/rsync
brew install homebrew/dupes/unzip

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install wget

# Remove outdated versions from the cellar.
brew cleanup
