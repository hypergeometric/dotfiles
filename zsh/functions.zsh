# List all the installed formulae that have dependencies
brew-only-deps() {
  brew list | while read formula; do
    deps=$(brew deps $formula | xargs echo -n)
    if [[ -n $deps ]]; then
      echo "$formula -> \e[34m$deps\e[0m"
    fi
  done
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}

# Run `dig` and display the most useful info
function digga() {
  dig +nocmd "$1" any +multiline +noall +answer;
}
