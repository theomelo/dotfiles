# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL
export DO_NOT_TRACK=1

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
