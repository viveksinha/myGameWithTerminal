function unrax() {
if (unrar vb "$1" | grep ".*/">/dev/null); then
   echo $1
   unrar x "$1"
else
   echo $1
   unrar x -ad "$1"
fi
}

# == unrar all files in dir. ==
# unrax unrars and created a folder if RAR doesn't contain one, to stop cluttering the current path.
# depends on unrax in .bash_functions
function unrax-all() {
for i in $( ls *.rar ); do unrax "$i"; echo "$i"; done
}

# remind me, its important!
# usage: remindme <time> <text>
# e.g.: remindme 10m "omg, the pizza"
# function remindme()
# {
#     sleep $1 && zenity --info --text "$2" &
# }

note ()
{
       #if file doesn't exist, create it
       [ -f $HOME/.notes ] || touch $HOME/.notes
       #no arguments, print file
       if [ $# = 0 ]
       then
               cat $HOME/.notes
       #clear file
       elif [ $1 = -c ]
       then
               > $HOME/.notes
       #add all arguments to file
       else
               echo "$@" >> $HOME/.notes
       fi
}

# BRIGTNESS 1-10
function brightness_dim() { 
    sudo sh -c "echo '$1' >> /sys/class/backlight/acpi_video0/brightness"
}

# extract any jar file
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.lzma)      unlzma $1      ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x -ad $1 ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.xz)        unxz $1        ;;
          *.exe)       cabextract $1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

# cd
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

mcd () {
    mkdir -p $1
    cd $1
}

pack() {
  local FILE
  FILE=$1
  case $FILE in
    *.tar.bz2)  shift && tar cjf $FILE $* ;;
    *.tbz2)     shift && tar cjf $FILE $* ;;
    *.tar.gz)   shift && tar czf $FILE $* ;;
    *.tgz)      shift && tar czf $FILE $* ;;
    *.zip)      shift && zip $FILE $*     ;;
    *.rar)      shift && rar $FILE $*     ;;
  esac
}