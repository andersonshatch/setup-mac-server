#source .bash_profile to reload this
[[ -x "/opt/homebrew/bin/brew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

alias ls="ls -G"
alias la="ls -Gla"
alias ll="ls -Gl"
alias finder="open"
alias sha1='openssl sha1'
export LSCOLORS="ExGxBxDxBxEgEdxbxgxcxd"
alias monitortm='grep backupd /var/log/system.log | tail && tail -fn 0 /var/log/system.log | grep backupd'
alias monitorall='tail -f /var/log/system.log'
HISTFILESIZE=1000000000 HISTSIZE=1000000
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND} history -a"
shopt -s cdspell
export HISTCONTROL=ignoreboth
alias vless='/usr/share/vim/vim80/macros/less.sh'
export PYTHONSTARTUP=$HOME/.pythonrc.py

pa ()
{
	open 'x-choosy://prompt.all/http://'$1	
}

vnc ()
{
	open 'vnc://'$1
}

export PATH="~/bin:$PATH"
export PATH="~/.pyenv/shims:$(brew --prefix vim)/bin:$PATH"

alias vi=vim

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
