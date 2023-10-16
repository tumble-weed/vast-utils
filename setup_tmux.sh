_tmux_autocomplete_sessions() {
    local sessions
    sessions="$(tmux list-sessions -F '#S' 2>/dev/null)"
    COMPREPLY=($(compgen -W "$sessions" -- "${COMP_WORDS[COMP_CWORD]}"))
}

complete -F _tmux_autocomplete_sessions tmux

tma() {
    local session_name
    local tmux_cmd

    # Get the session name using tab completion
    read -e -i "$1" -p "Enter Tmux session name: " session_name

    # Build the tmux command
    tmux_cmd="tmux a -t $session_name"

    # Execute the tmux command
    eval "$tmux_cmd"
}

# Alias for tab-completed "tma"
alias tma="tma"

# Enable tab completion for "tma" alias
complete -F _tmux_autocomplete_sessions tma

