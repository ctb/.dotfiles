# Bourne Again SHell init file

#export HOME=/disk/u/t

umask 022 	# Set default file protection to rw/r/r

HNAME=`hostname`	# Set $HNAME to be the current machines name

if [ ! "$EXEC_LOGIN" ]; then
	source ~t/.bash_login
fi

# Set the path, dividing into less confusing sections :-)
# This is done for me on some machines (schedir right now)

PATH=~/.bin:/sbin:/usr/local/bin:/usr/sbin:/bin:/usr/bin:/usr/bin/X11:/usr/X11R6/bin:~/.bin:.:/usr/games:/Library/TeX/texbin
MANPATH=/usr/local/man:/usr/X11R6/man:/usr/man:/usr/share/man

export PATH
export MANPATH

export CDPATH=.:~/:~/dev:~/proj:~/.short

# You may want to change these
export EDIT="vi"
export EDITOR="vi"
export VISUAL="vi"
export PAGER="less"

# Set the prompt obnoxiously

PS1='(tiassa)`dirs` -> '

if [ `hostname` = "altair" -a `whoami` != 'root' ]; then
	cd ~/
fi

# Csh compatability:
#
alias unsetenv=unset
function setenv()
{
        if [ $# -ne 2 ] ; then
                echo "setenv: Too few arguments"
        else
                export $1="$2"
        fi
}

source ~t/.alii

if [ `whoami` = 'root' ]; then
        PS1='(\h)`dirs` root\$ '
fi

#ulimit -f 300000

PATH=$PATH:/home/postgres/bin
MANPATH=$MANPATH:/home/postgres/man
PGLIB=/home/postgres/lib
PGDATA=/home/postgres/data
export PATH MANPATH PGLIB PGDATA
export ON_ERROR_STOP=1

LC_COLLATE=C
LC_CTYPE=C
export LC_COLLATE LC_CTYPE

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
