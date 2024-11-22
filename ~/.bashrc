# ~/.bashrc: executed by bash(1) for non-login shells.

# Enable color prompt if the terminal supports it
if [ -n "$PS1" ]; then
    if [ -x /usr/bin/tput ]; then
        if tput setaf 1 >&/dev/null; then
            force_color_prompt=yes
        fi
    fi
fi

# Set custom prompt for root@localhost
export PS1='\[\033[01;31m\]root@localhost\[\033[00m\]:\w\$ '

# Alias for commonly used commands
alias ll='ls -l'
alias la='ls -la'
alias l='ls -lA'

# Enable command history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# Set environment variables
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# For PulseAudio (if needed)
export PULSE_SERVER=unix:/run/user/1000/pulse/native

# Start Neofetch on new terminal session
if [ -f /usr/bin/neofetch ]; then
    neofetch
fi

# End of .bashrc
