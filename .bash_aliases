# ----------------------
# Utils

alias settings='coda ~/.bash_login'
alias aliases='coda ~/.dotfiles/.bash_aliases'
alias functions='coda ~/.dotfiles/.bash_functions'
alias refresh=". ~/.bash_login; echo '.bash_login sourced'"
alias .update='LAST=$PWD; cd ~/.dotfiles; gplom; refresh; cd $LAST'



alias rm_gitkeep="find . -name '*.gitkeep' -type f -delete"
alias rm_ds="find . -name '*.DS_Store' -type f -delete"
alias lsa='ls -al'
alias ..='cd ..'
alias ...='cd ../../'
alias pbc='pbcopy'
alias pbp='pbpaste'

alias tarc='tar -czvf'
alias tarx='tar -xzvf'

alias tlog='tail -100 log/development.log'
alias tailf='tail -f log/development.log'
alias tailfp='tail -f log/production.log'

alias loc='sloccount'
alias curo='curl -O'

alias lorem='wordy | pbc'

# ----------------------
# Applications

alias rube='ruby -e'
alias berb='be ruby -I lib -I test'

alias yui_compress='java -jar /usr/local/yui/build/yuicompressor-2.4.2.jar'

alias coda='open -a Coda'
alias pshop='open -a Adobe Photoshop CS5'
alias fndr='open -a Finder'
alias sfri='open -a Safari'
alias lh="safari 'http://localhost:3000/'"
alias itns='open -a iTunes'

alias flush_cache='dscacheutil -flushcache'


# ----------------------
# Rubygems

alias gl='gem list'
alias gi='gem install'


# ----------------------
# Bundler

alias bi='bundle install'
alias bil='bundle install --local'
alias bu='bundle update'
alias bul='bundle update --local'
alias bg='bundle gem'
alias be='bundle exec'
alias beh='bundle exec heroku'


# ----------------------
# Git

alias gst='git status'
alias ga='git add'
alias gc='git commit -v -m'
alias gca='git commit -a -v -m'
alias gcm='git commit --amend'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gt='git tag'
alias gd='git diff'
alias gcl='git clone'
alias gco='git checkout'
alias gpo='git push origin'
alias gplo='git pull origin'
alias gpom='gpo master'
alias gpoc='gpo citrus'
alias gplom='gplo master'
alias gploc='gplo citrus'
alias glog='git log'
alias gsho='git show'


# ----------------------
# Capistrano

alias caprs='cap deploy:restart'
alias capd='cap deploy'
alias capdc='cap deploy:cold'
alias capdt='cap deploy:tail'


# ----------------------
# Heroku

alias ghero='git push heroku master'
alias hu='heroku'
alias kmd='bundle exec kumade'

# ----------------------
# MySQL

alias mysql_start="launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist; ewc 32 'mysql started'"
alias mysql_stop="launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist; ewc 32 'mysql stopped'"
alias mysql_restart='mysql_stop; sleep 1; mysql_start'
alias _mysql='mysql -uroot -p -hlocalhost'


# ----------------------
# Rails 3

alias rait='rails s thin'
alias raitp='rails s thin -e production'
alias trs='touch tmp/restart.txt'
alias rg='rails g'
alias rc='rails c'


# ----------------------
# Rails 2

alias ss='script/server'
alias sg='script/generate'
alias sc='script/console'
alias ssp='ss -e production'


# ----------------------
# Rake

alias brake='bundle exec rake'
alias dbd='brake db:drop'
alias dbc='brake db:create'
alias dbm='brake db:migrate'
alias dbs='brake db:seed'
alias dbv='brake db:version'
alias dbrb='brake db:rollback'
alias dbcm='brake db:create db:migrate'
alias dbdu='brake db:migrate:down db:migrate'
alias dbcms='brake db:create db:migrate db:seed'
alias dbtrs='brake db:drop db:create db:migrate RAILS_ENV=test'
alias dbrs='brake db:drop db:create db:migrate db:seed; dbtrs'
alias dbreset='brake db:drop db:create db:migrate db:seed'
alias dbtest='brake db:drop db:create db:schema:load RAILS_ENV=test'
alias precomp='brake assets:precompile RAILS_ENV=production'
alias clearlogs='brake log:clear'
