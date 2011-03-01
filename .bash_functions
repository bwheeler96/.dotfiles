# ----------------------
# Colors

orange=1
underline=4
blinking=5
background=7
black=30
red=31
green=32
yellow=33
blue=34
purple=35
cyan=36
white=37

ewc() {
  # validate color range
  if [[ $1 -lt 1 || $1 -gt 37 ]]; then
    ewc 31 "Please specify a valid color value"
    ewc 37 "  Orange     1   \$orange
  Underline  4   \$underline
  Blinking   5   \$blinking 
  Background 7   \$background
  Black	     30  \$black
  Red	     31  \$red
  Green	     32  \$green
  Yellow     33  \$yellow
  Blue	     34  \$blue
  Purple     35  \$purple
  Cyan	     36  \$cyan
  White      37  \$white"
  fi
  if [ -z "$2" ]; then
    ewc $red "Please specify the text"
    ewc $cyan "  ewc \$cyan 'this will be cyan'"
    return 1
  fi
  if [[ -n "$1" && -n "$2" ]]; then
    echo -e "\033[$1m$2\033[0m"
  fi
}



# ----------------------
# Google

ggl() {
  echo "$*"
  if [ -z "$*" ]; then
    ewc $red "Please specify a search query"
    return 1
  fi
  open -a Safari "http://www.google.com/search?q=$*"
}


# ----------------------
# MySQL

dbdump() {
  if [ -z "$1" ]; then
    ewc $red "Please specify which database to dump"
    return 1
  fi
  db="$1_$(date +"%m-%d-%Y_%H-%M-%S").sql"
  ewc $green "> Dumping '$1' to '$db'..."
  mysqldump -uroot -p -hlocalhost $1 > $db
  if [ $? -eq 0 ]; then
    ewc $green "> Created:"
    ewc $cyan "  $PWD/$db"
  else
    rm $db
    ewc $red "> Failed:"
    ewc $orange "  $db was not created."
  fi  
}

dbload() {
  if [ -z "$1" ]; then
    ewc $red "Please specify the name of the database"
  fi
  if [ -z "$2" ]; then
    ewc $red "Please specify the database filename you wish to load"
    ewc $white "  dbload [database_name] [database_file]"
    return 1
  fi
  if [ ! -f $2 ]; then
    ewc $red "> Failed!"
    ewc $red "  $2 does not exist"
    return 1
  fi
  if [[ -n "$1" && -n "$2" ]]; then
    ewc $green "> Loading '$2' into '$1'..."
    _mysql $1 < $2
    
    if [ $? -eq 0 ]; then
      ewc $green "> Loaded:"
      ewc $cyan "  $2"
    else
      ewc $red "> Failed:"
      ewc 1 "  $2 was not loaded."
    fi
  fi  
}


# ----------------------
# Shotgun

shoty() { 
  app="$PWD/app.rb"
  if [ -f $app ]; then
    shotgun -p 4567 $app
  else
    echo "No app.rb found"
  fi
}


# ----------------------
# Hardcore Cache Clear

fuck_my_cache() {
  count=1000
  echo "clearing your cache $count times"  
  while [ $count -gt 0 ]
  do
    dscacheutil -flushcache
    count=`expr $count - 1`
  done
  echo "k. thx. bye."
}