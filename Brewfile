# Setup casks
tap 'homebrew/cask'
CASK_PATH = '/opt/homebrew/Caskroom'
CASK_PACKAGES = [
  'dbeaver-community',
  'iterm2',
  '1password',
  'hiddenbar',
  'stats'
].freeze
CASK_PACKAGES.each do |package|
  cask package unless File.directory?("#{CASK_PATH}/#{package}")
end

BREW_PATH = '/opt/homebrew/Cellar'
BREW_PACKAGES = [
  'zsh-syntax-highlighting',
  'starship' ,
  'the_silver_searcher',
  'tmux',
  'direnv',
  'bat',
  'fzf',
  'ctags',
  'ripgrep',  
].freeze
BREW_PACKAGES.each do |package|
  brew package unless File.directory?("#{BREW_PATH}/#{package}")
end
