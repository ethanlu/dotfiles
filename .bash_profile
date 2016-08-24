# load .bashrc if it exists
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# load environment settings
if [ -f ~/.environment ]; then
	. ~/.environment
fi

# load any extra configurations
if [ -f ~/.extra ]; then
	. ~/.extra
fi

# configure prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Add tab completion for many Bash commands
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
