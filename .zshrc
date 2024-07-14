# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


export PATH="$PATH:home/echung/anaconda3/bin"

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
g16root="/home/echung/Programs/Gaussian"
GAUSS_SCRDIR="/home/echung/Programs/Gaussian/scratch"

export g16root GAUSS_SCRDIR
. $g16root/g16/bsd/g16.profile


alias gv="bash /home/echung/Programs/Gaussian/gv/gview.sh"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/echung/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/echung/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/echung/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/echung/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export HYPRSHOT_DIR="/home/echung/Pictures"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
