alias S="source ~/.bash_profile"
alias RR="foreman start -f Procfile.dev"
alias RCW="RAILS_ENV=test bin/rails webpacker:compile"

function __ps1_newline_login {
  if [ $? -eq 0 ]; then
  echo "🐑 💨 "
 else
  echo "💩 "
 fi
}

PS1='$(__ps1_newline_login) '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 2.4.2
