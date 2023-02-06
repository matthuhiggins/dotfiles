brew tap heroku/brew
brew tap homebrew/cask-versions
brew tap elastic/tap

brew install \
  bash-completion \
  chruby
  coreutils \
  git \
  heroku \
  jenv \
  memcached \
  mysql \
  node \
  postgres \
  puma/puma/puma-dev \
  redis \
  ruby-install \
  zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew services start memcached
brew services start redis
brew services start postgresql
