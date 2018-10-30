cask_args appdir: '/Applications'

tap "caskroom/cask"
tap "caskroom/fonts"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "puma/puma"

brew "autoconf"
brew "automake"
brew "docker-completion"
brew "docker-compose-completion"
brew "coreutils"
brew "curl"
brew "dos2unix"
brew "git"
brew "git-lfs"
brew "libtool"
brew "graphicsmagick"
brew "imagemagick"
brew "jmeter"
brew "libksba"
brew "libyaml"
brew "openssl@1.1"
brew "pkg-config"
brew "readline"
brew "python@2"
brew "spark"
brew "tmux"
brew "watch"
brew "watchman"
brew "zsh"
brew 'zsh-completions'

unless ENV['HOMEBREW_SYSTEM'] == 'Linux'
  brew "gcc"
  brew "mas"
  brew "putty"
  brew "tesseract", args: ["with-all-languages"]

  # cask "dbeaver-community"
  cask "font-hack-nerd-font"
  cask "visual-studio-code"
  cask "caskroom/versions/visual-studio-code-insiders"
  cask "virtualbox"
  cask "caskroom/fonts/font-fira-code"
end
