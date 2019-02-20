
function __ssha {
             ssh -i ~/.ssh/alaki alaki@"$1"
}

alias ssha='__ssha'
