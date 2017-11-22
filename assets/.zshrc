export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_HIDE_BRANCH_ICON=true
DEFAULT_USER=$USER
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
source $ZSH/oh-my-zsh.sh
eval $(thefuck --alias)
alias git=hub
alias ls=exa
alias quit=exit
