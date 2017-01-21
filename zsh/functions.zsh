brew-deps() {
  brew list | while read formula; do
    deps=$(brew deps $formula | xargs echo -n)
    if [[ -n $deps ]]; then
      echo "$formula -> \e[34m$deps\e[0m"
    fi
  done
}
