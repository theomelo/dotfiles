#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install \
  autoconf \
  automake \
  brew-cask-completion \
  brotli \
  c-ares \
  cairo \
  coreutils \
  ctags \
  curl \
  direnv \
  fontconfig \
  freetds \
  freetype \
  fribidi \
  fzf \
  gd \
  gdbm \
  gdk-pixbuf \
  gettext \
  git \
  glib \
  gobject-introspection \
  graphite2 \
  graphviz \
  gts \
  harfbuzz \
  hub \
  icu4c \
  jasper \
  jemalloc \
  jpeg \
  krb5 \
  libev \
  libevent \
  libffi \
  libgpg-error \
  libidn2 \
  libksba \
  libmetalink \
  libpng \
  libpq \
  librsvg \
  libssh2 \
  libtiff \
  libtool \
  libunistring \
  libyaml \
  luarocks \
  lzo \
  ncurses \
  netpbm \
  nghttp2 \
  node \
  nvm \
  openldap \
  openssl@1.1 \
  pango \
  pcre \
  pixman \
  pkg-config \
  postgresql@12 \
  python@3.9 \
  readline \
  reattach-to-user-namespace \
  rtmpdump \
  sqlite \
  starship \
  the_silver_searcher \
  the_silver_searcher \
  thefuck \
  tmux \
  tmux \
  tree \
  unixodbc \
  utf8proc \
  webp \
  xz \
  yarn \
  zlib \
  zsh \
  zstd \
brew install macvim --custom-icons --with-python3 --with-cscope --override-system-vim --with-lua --with-luajit
brew unlink macvim && brew link macvim
brew install --cask \
  adoptopenjdk \
  dbeaver-community \
  docker \
  iterm2 \
  postman \
  google-chrome \


