export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs command_execution_time time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
DEFAULT_USER=$USER
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"
HIST_STAMPS="dd.mm.yyyy"
POWERLEVEL9K_CUSTOM_COMMAND_TIME="zsh_command_time"
POWERLEVEL9K_CUSTOM_COMMAND_TIME_BACKGROUND="253" # white
POWERLEVEL9K_CUSTOM_COMMAND_TIME_FOREGROUND="000" # black

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"

source $ZSH/oh-my-zsh.sh

eval $(thefuck --alias)
eval "$(hub alias -s)"

alias ls=exa
alias quit=exit

function chpwd() {
    emulate -L zsh
    ls -a
}

function calc () {
    bc -l <<< "$@"
}
