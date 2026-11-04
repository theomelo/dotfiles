#!/bin/sh
# Dev-container dotfiles: symlink configs, install vim/ag/starship if missing.
set -e
cd "$(dirname "$0")"
DIR=$PWD

ln -sfn "$DIR/bashrc" ~/.bashrc
ln -sfn "$DIR/inputrc" ~/.inputrc
ln -sfn "$DIR/aliases" ~/.aliases
ln -sfn "$DIR/vimrc" ~/.vimrc
ln -sfn "$DIR/vim" ~/.vim

SUDO=
[ "$(id -u)" = 0 ] || ! command -v sudo >/dev/null || SUDO=sudo

if ! command -v vim >/dev/null || ! command -v ag >/dev/null; then
  if [ "$(id -u)" != 0 ] && [ -z "$SUDO" ]; then
    echo "WARN: no root/sudo; add vim and ag to the image" >&2
  elif command -v apt-get >/dev/null; then
    $SUDO apt-get update -qq && $SUDO apt-get install -y -qq vim silversearcher-ag
  elif command -v apk >/dev/null; then
    $SUDO apk add --no-cache vim the_silver_searcher
  fi
fi

if ! command -v starship >/dev/null && [ ! -x ~/.local/bin/starship ]; then
  if command -v curl >/dev/null; then fetch="curl -fsSL"; else fetch="wget -qO-"; fi
  mkdir -p ~/.local/bin
  $fetch https://starship.rs/install.sh | sh -s -- -y -b ~/.local/bin ||
    echo "WARN: starship install failed" >&2
fi

# coc.nvim needs node and may fail; plugins are optional
command -v vim >/dev/null && vim -es -u ~/.vimrc +PlugInstall +qall || true
