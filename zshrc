setopt promptsubst
# setopt PROMPT_SUBST

# Autoload custom functions
fpath=( ~/.zsh/functions "${fpath[@]}" )
autoload -Uz $fpath[1]/*(.:t)

# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U compinit
compinit -u

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

set -o nobeep # no annoying beeps

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Zsh syntax highlighting
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Local secrets env var
[[ -f ~/.secrets ]] && source ~/.secrets

setopt interactivecomments

# Set Direnv
eval "$(direnv hook zsh)"

# Load FuzzyFinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Starship configuration
eval "$(starship init zsh)"
