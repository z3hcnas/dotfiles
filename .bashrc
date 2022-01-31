#
#. ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias rof='rofi -show run'
alias at='alacritty-themes'
alias nv='nvim'
alias of='fzf | xargs -I_ nvim _ '
alias ohf='find . | fzf | xargs -I_ nvim _'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

neofetch
export LC_ALL="C"
PS1='\u@\h \w $ '
export PROMPT_DIRTRIM=2
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/izam/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
if [ -f "/home/izam/anaconda3/etc/profile.d/conda.sh" ]; then
       . "/home/izam/anaconda3/etc/profile.d/conda.sh"
   else
     export PATH="/home/izam/anaconda3/bin:$PATH"
 fi
fi
unset __conda_setup
# <<< conda initialize <<<

