brew tap heroku/brew
brew tap homebrew/cask-versions

brew install \
  bash-completion \
  chruby
  coreutils \
  git \
  node \
  ruby-install \
  zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

