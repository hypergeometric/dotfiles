# -A do not list implied . and ..
# -G in a long listing, don't print group names
# -p append / indicator to directories
# -h with -l and/or -s, print human readable sizes (e.g., 1K 234M 2G)
# --color colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below
alias ls='ls -AGph --color=auto'
# -l use a long listing format
alias la='ls -l'

# List brew formulae with dependencies
alias brew-deps='brew deps --tree --installed | grep .'

alias gst='git status'
alias glog='git lg'
alias gaa='git add --all'
alias gareset='gaa && git reset --hard'
alias gwip='gaa && git commit --no-verify -m wip'
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'

alias npmpublist='file=`npm pack`;tar tvf $file;rm -rf $file'

alias docker-rm-all='docker rm -f $(docker ps -a -q)'

function hidden() {
  if [ $1 = 'true' ] || [ $1 = 'false' ]; then
    defaults write com.apple.finder AppleShowAllFiles -boolean $1; killall Finder
  fi
}
