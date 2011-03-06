# ----------------------
# Utils

alias settings='coda ~/.bash_login'
alias aliases='coda ~/.dotfiles/.bash_aliases'
alias functions='coda ~/.dotfiles/.bash_functions'
alias refresh=". ~/.bash_login; echo '.bash_login sourced'"
alias .update='cd ~/.dotfiles; gplom; refresh'


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


# ----------------------
# Applications

alias rube='ruby -e'
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
alias bu='bundle update'
alias bg='bundle gem'
alias be='bundle exec'


# ----------------------
# Git

alias git='hub'
alias gst='git status'
alias ga='git add'
alias gc='git commit -v -m'
alias gca='git commit -a -v -m'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gcl='git clone'
alias gco='git checkout'
alias gpom='git push origin master'
alias gpoc='git push origin citrus'
alias gplom='git pull origin master'
alias gploc='git pull origin citrus'
alias glog='git log'


# ----------------------
# Heroku

alias ghero='git push heroku master'
alias hu='heroku'


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

alias dbd='rake db:drop'
alias dbc='rake db:create'
alias dbm='rake db:migrate'
alias dbs='rake db:seed'
alias dbv='rake db:version'
alias dbrb='rake db:rollback'
alias dbcm='rake db:create db:migrate'
alias dbcms='rake db:create db:migrate db:seed'
alias dbreset='rake db:drop db:create db:migrate db:seed'
alias clearlogs='rake log:clear'