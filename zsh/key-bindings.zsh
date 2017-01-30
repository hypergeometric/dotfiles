# Use emacs key bindings
bindkey -e

# [Backspace] - Delete backward
bindkey "$terminfo[kbs]" backward-delete-char
# [Delete] - Delete forward
bindkey "$terminfo[kdch1]" delete-char

# [Shift-Tab] - Move through the completion menu backwards
bindkey "$terminfo[kcbt]" reverse-menu-complete

# [PageUp] - Up a line of history
bindkey "$terminfo[kpp]" up-line-or-history
# [PageDown] - Down a line of history
bindkey "$terminfo[knp]" down-line-or-history

# [Home]/[OPTION+left] - Go to beginning of line
bindkey "$terminfo[khome]" beginning-of-line
bindkey '[D' beginning-of-line
# [End]/[OPTION+right] - Go to end of line
bindkey "$terminfo[kend]"  end-of-line
bindkey '[C' end-of-line

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

# Start typing + [Up-Arrow] - Fuzzy find history forward
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
# Start typing + [Down-Arrow] - Fuzzy find history backward
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
