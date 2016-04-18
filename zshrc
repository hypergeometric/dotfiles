source .zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle autojump
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle brew
antigen bundle brew-cask
antigen bundle git
# antigen bundle npm # This plugin slows down startup by about 1s - https://github.com/robbyrussell/oh-my-zsh/issues/3392

antigen bundle zsh-users/zsh-completions src
# antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme ys

# Tell antigen that you're done.
antigen apply


export ANDROID_SDK_ROOT=`brew --prefix android-sdk`
export ANDROID_HOME=$ANDROID_SDK_ROOT

# export CHROME_BIN=~/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

path=(
  ~/bin
  $path
  #~/Applications/Firefox.app/Contents/MacOS
)

GOOGLE_CLOUD_SDK_DIR=/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/
if [ -e $GOOGLE_CLOUD_SDK_DIR ]; then
  source $GOOGLE_CLOUD_SDK_DIR/path.zsh.inc
  autoload -U bashcompinit && bashcompinit && source $GOOGLE_CLOUD_SDK_DIR/completion.zsh.inc
fi

alias brew-deps='brew list | while read cask; do echo -n "\e[1;34m$cask ->\e[0m"; brew deps $cask | awk ''{printf(" %s ", $0)}''; echo ""; done'

export EDITOR='subl -w'
