# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


export PATH="$PATH:$HOME/anaconda3/bin"

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
g16root="$HOME/Programs/Gaussian"
GAUSS_SCRDIR="$HOME/Programs/Gaussian/scratch"

export g16root GAUSS_SCRDIR
. $g16root/g16/bsd/g16.profile


alias gv="bash ~/Programs/Gaussian/gv/gview.sh"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export HYPRSHOT_DIR="$HOME/Pictures"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls="lsd"
alias ll="ls -tlFh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export XDG_DATA_HOME="$HOME/Programs/balenaEtcher-linux-x64:"

alias clock="tty-clock -sxtc"

export WEBKIT_DISABLE_DMABUF_RENDERER=1

export TERM=xterm-256color
#alias ssh="kitty +kitten ssh"

export WEBKIT_DISABLE_COMPOSITING_MODE=1         
export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json
alias bambu='__EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json WEBKIT_DISABLE_DMABUF_RENDERER=1 WEBKIT_FORCE_COMPOSITING_MODE=1 WEBKIT_DISABLE_COMPOSITING_MODE=1 bambu-studio'

export WINAPPS_SRC_DIR="$HOME/.local/bin/winapps-src"

export PIPX_HOME=$HOME/.local/pipx
export PATH="$HOME/.local/bin:$PATH"
export _JAVA_AWT_WM_NONREPARENTING
