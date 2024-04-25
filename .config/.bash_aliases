
# Commands
alias nat='sudo nala'
alias upall='sudo nala upgrade -y && flatpak upgrade -y'
alias apt='\nala'
alias nala='sudo nala'
alias oldapt='\apt'
alias sudo='sudo '
alias ssha='eval $(ssh-agent) && ssh-add'
alias v='vim'
alias sv='sudo vim'
alias nv='nvim'
alias rl='source ~/.bashrc'

# folder alias
alias la='ls -A'
alias lt='ls -ltA'
alias ll='ls -l'
alias l='ls'
alias t="tree -L 1 -a -I '.git'" 
alias tt="tree -a -I '.git'" 
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'

# storage
alias storage='du -x -h -d1'

# File Handling 
alias rm='rm -r'
alias cp='cp -r'
#alias cp='cp -i'	#confirm
#alias rm='rm -i'	#confirm
#alias mv='mv -i'	#confirm

# git
alias gs='git status'
alias ga='git add'
alias gA='git add -A'
alias gc='git commit -am'
alias gpush='git push'
alias gclone='git clone'
alias glazy='git add -A && git commit -m "update" && git push'
alias gitac='git add -A && git commit -am'
# variables

# zoxide
eval "$(zoxide init bash)"

# Bind Ctrl+F to fzf
source /usr/share/fzf/shell/key-bindings.bash
bind -x '"\C-f": "$(command -v fzf)";'

export FZF_DEFAULT_COMMAND='find .'

# Java
alias jc='javac *.java'
alias jr='rm *.class'

# C
alias c17='g++ --std=c++17'
alias cr='rm *.out'

# FZF tmux
bind -x '"\C-f": ~/.local/bin/tmux-sessionizer'

# Exports
export EDITOR='nvim'
