# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias grep="grep --color=auto"

# Grep History
alias gh='history|grep'

# Create a new directory and enter it.
function mkd() {
        mkdir -p "$@" && cd "$_";
}

# Modify dig results
function digs() {
        dig +nocmd "$1"any +multiline +noall +answer;
}

# Prompt settings
PS1="\[\e[1;35m\]\u" # username
PS1+="\[\e[0;31m\] in \W -> "; # working directory
PS1+="\[\e[0;37m\]"; # reset the colour
export PS1;
