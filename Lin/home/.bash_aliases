#alias tcn='mv --force -t ~/.local/share/Trash'
#alias ls='ls -F'
alias ls='ls -BpvC --group-directories-first --color=auto'
##alias ll='ls -lhNa'
alias la='ls -A'

alias inst="sudo apt install"

alias lezz='pygmentize -g'

if [ -x "$(command -v eza)" ]; then
    alias ll="eza -a --long --all --group --icons=auto --git --group-directories-first"
fi

# pwd and cd aliases
##alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'

# mkdir
md() { mkdir -p "$@" && cd "$@"; }

alias py='python3'
alias se='sudoedit'
