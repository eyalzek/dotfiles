# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias fuck='eval $(thefuck $(fc -ln -1)); history -a; history -c; history -r'
alias FUCK='fuck'

function sblm
{
    nohup sublime-text "$1" >/dev/null 2>&1 &
}
alias subl='sblm'
alias workdir='cd ~/Documents/code/work/'

alias studio='/opt/android-studio/bin/studio.sh'

function berksdbg
{
    DEBUG_RESOLVER=1 berks "$@" -d
}
alias berks_debug=berksdbg

function set_env
{
    eval $(set_aws_env.py $1)
}
alias setawsenv=set_env
function br_clean
{
   git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d
}
alias branch_clean=br_clean
