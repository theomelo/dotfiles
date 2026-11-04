export VISUAL=vim EDITOR=vim DO_NOT_TRACK=1
export PATH="$HOME/.bin:$HOME/.local/bin:/usr/local/sbin:$PATH"

case $- in *i*) ;; *) return ;; esac

export CLICOLOR=1

HISTCONTROL=ignoredups:erasedups
HISTSIZE=4096
HISTFILESIZE=4096
shopt -s histappend autocd cdable_vars extglob
PROMPT_COMMAND="history -a${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.bashrc.local ] && . ~/.bashrc.local
[ -f ~/.secrets ] && . ~/.secrets
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

command -v starship >/dev/null && eval "$(starship init bash)"
