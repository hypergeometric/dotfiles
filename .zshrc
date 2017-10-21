export DOTFILES="$HOME/.dotfiles"

export EDITOR='subl -w'

path=(
  '/usr/local/opt/coreutils/libexec/gnubin'
  $path
)

manpath=(
  '/usr/local/opt/coreutils/libexec/gnuman'
  $manpath
)

source "$DOTFILES/zsh/functions.zsh"
source "$DOTFILES/zsh/key-bindings.zsh"
source "$DOTFILES/zsh/aliases.zsh"

# Load antibody plugins
source ~/.bundles.txt

source "$DOTFILES/zsh/history.zsh"
source "$DOTFILES/zsh/completion.zsh"

