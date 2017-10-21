#!/bin/sh

if ! type antibody >/dev/null; then
  brew tap -q getantibody/homebrew-antibody
  brew install antibody
fi

rm -rf ~/Library/Caches/antibody
rm -f ~/.bundles.txt

cat "$DOTFILES/antibody/bundles.txt" | while read bundle; do
  antibody bundle $bundle >> ~/.bundles.txt
done

echo "Installed antibody; Created bundles.txt in ${HOME}."
