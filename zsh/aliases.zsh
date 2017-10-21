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
