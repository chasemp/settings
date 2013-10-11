NORMAL=$(tput sgr0)
RED=$(tput setaf 1; tput bold)
MAGENTA=$(tput setaf 5)
BLUE=$(tput setaf 4)

function red() {
    echo -e "$RED$*$NORMAL"
}

function mag() {
    echo -e "$MAGENTA$*$NORMAL"
}

function blue() {
    echo -e "$BLUE$*$NORMAL"
}


function parse_git_branch {
    gs=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null)
    if [ -z "$gs" ]; then
      return
    fi
    if [ "$gs" == "master" ]
    then
        gs=$(mag "m")
    else
        gs=$(red "$gs")
    fi

    echo "[$gs]"
}

parse_git_branch
