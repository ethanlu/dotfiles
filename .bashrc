# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# load aliases
if [ -f ~/.alias ]; then
	. ~/.alias
fi

# configure prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

