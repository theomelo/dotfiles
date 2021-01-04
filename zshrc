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

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

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
TERM=screen-256color

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Local secrets env var
[[ -f ~/.secrets ]] && source ~/.secrets

setopt interactivecomments

# Set Direnv
eval "$(direnv hook zsh)"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Force Vim from brew
export PATH="$PATH:/usr/local/Cellar/vim/8.2.0250_1"

# Postgres config
export PATH="$PATH:/Library/PostgreSQL/12/bin"

# VirtualenvWrapper config
export WORKON_HOME=$HOME/.virtualenvs

# Load FuzzyFinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TheFuck config
eval $(thefuck --alias)

# Starship configuration
eval "$(starship init zsh)"

## Python, Node, Ruby envs Configuration ##

# PyEnv config
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Deno config
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

# NVM config
 [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
 [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionxport  export NVM_DIR="$HOME/.nvm"

# Run arbitrary functions upon directory entering
function chpwd() {
  update-node-version
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/melost/.google-cloud-sdk/path.zsh.inc' ]; then . '/Users/melost/.google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/melost/.google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/melost/.google-cloud-sdk/completion.zsh.inc'; fi


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
