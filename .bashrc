# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#MY OWN MODS
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(zoxide init bash)"
alias d='docker'
clear

#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then DISABLED WHEN WEZTERM IS USED
#    tmux attach -t main || tmux new -s main
#fi

alias fef="fzf --preview 'bat --color=always {}' --preview-window '~3'"
alias vfv='vi "$(fzf --preview "bat --color=always {}")"'
