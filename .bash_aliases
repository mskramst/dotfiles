# ------------------------------ aliases -----------------------------

# my aliases
alias ls='ls -h --color=auto'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias used="du -sh"
alias chmox='chmod +x'

# common directories
alias gistc='gh gist create -'
alias gistls='gh gist ls'

# editing config files
alias hl='highlight -O ansi'
alias src='exec bash -l'     #reloads shell with all values (best)

# git
alias status="git status"
alias gita="git add -A ."
alias gitc="git commit -m"
alias gitac="git add -A . & git commit -m "
alias gitp="git push origin main && echo 'pushing main to origin'"
alias rdme="cat README.md"
