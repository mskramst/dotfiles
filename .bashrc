#  ----------------------------- setup -------------------------------
export USER="${USER:-$(whoami)}"
export GITUSER="$USER"
export HRULEWIDTH=73
export EDITOR=vi
export EDITOR_PREFIX=vi
export VISUAL=vi
# -------------------------- color man pages -------------------------

export LESS="-R"
export LESS_TERMCAP_mb="[35m" # magenta
export LESS_TERMCAP_md="[33m" # yellow
export LESS_TERMCAP_me="" # "0m"
export LESS_TERMCAP_se="" # "0m"
export LESS_TERMCAP_so="[34m" # blue
export LESS_TERMCAP_ue="" # "0m"
export LESS_TERMCAP_us="[4m"  # underline

# ----------------------------- history -------------------------------

set -o vi
HISTSIZE=5000
HISTFILESIZE=10000
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias ls='ls --color=auto'
fi


# ------------------------------ prompt ------------------------------

## set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;
esac
#${debian_chroot:+($debian_chroot)}
if [ "$color_prompt" = yes ]; then
	PS1='\n$winidx (\[\033[01;34m\]\u\033[01;37m\])
  \[\033[01;37m\]\W\[\033[00m\]/ \[\033[01;33m\] $(__git_ps1) \[\033[01;37m\]->> \[\033[00;37m\]  '
  else 
	PS1='\u@\h:\w\$ '
fi

# ----------------------------- functions ----------------------------

# go up x number of dirs with # argument

goup() {
  num=$1
  while [ $num -ne 0  ];do
    cd ..
    num=$( expr $num - 1   )
  done
}

