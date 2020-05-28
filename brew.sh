brew tap heroku/brew \
         homebrew/cask-versions \
         elastic/tap

brew install \
  bash-completion \
  coreutils \
  elastic/tap/elasticsearch-full
  git \
  heroku \
  jenv \
  memcached \
  mysql \
  node \
  postgres \
  puma/puma/puma-dev \
  rbenv \
  redis \
  ruby-build

brew services start memcached
brew services start redis
brew services start postgresql
