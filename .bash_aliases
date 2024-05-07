# ------------------------------ aliases -----------------------------

# my aliases
alias ls='ls -h --color=auto'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias used="du -sh"
alias jc='javac *.java && java Main'

# common directories
alias spa='npm create vite@latest'
alias pn='pnpm'
alias pnpmup='pnpm add -g pnpm'
alias pstart='pnpm start'
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
alias pack='cat package.json'
alias publish='npm publish --access=public'
alias vpack='vim package.json'
alias rdme="cat README.md"
alias chmox='chmod +x'