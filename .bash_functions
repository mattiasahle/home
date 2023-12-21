parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Terminal Title Text (TTT)
# Set a title of your chosing to the terminal tab
# Added by: Mattias 2023-10-25
# Author: Johan Ekström
# Last update: Mattias 2023-12-21
# Usage: ttt My title
ttt() {
    printf "\033]0;$*\007"
}
