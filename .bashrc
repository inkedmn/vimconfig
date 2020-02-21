# I jacked most of this from the internet. Shocking, I know.

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Defaults
export VISUAL=vim
export EDITOR="$VISUAL"

# Aliases 
source .aliases

# Custom prompt
export PS1="\u [\w] \\$ "

##
# Useful commands are useful.
##
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

## Create a grayscale/blurred version of an image;
# I use this in my BLOGGING.

grayblurs () {

    filename=$(basename -- "$1")
    extension="${filename##*.}"
    plain="${filename%.*}";
    newfile="${plain}.blurred.${extension}";

    convert ${filename} -blur 0x4 -set colorspace Gray -separate -average ${newfile}
}

export PATH="/usr/local/opt/ruby/bin:$PATH"
