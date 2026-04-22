# If the terminal program is Visual Studio Code (VS Code),
# this command sources the shell integration script for zsh
# provided by VS Code. This enables features like the VS Code
# integrated terminal to work seamlessly with zsh.
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs command_execution_time node_version time)
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
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_NODE_VERSION_FOREGROUND='black'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='palegreen3'

ENVIRONMENT="dev"
NODE_ENV=development

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"
eval $(thefuck --alias)
eval "$(hub alias -s)"
eval "$(zoxide init zsh)"

alias quit=exit
alias r="radian"
alias cd="z"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# DISABLES package.json to get packageManager whener you use npm/pnpm/yarn etc.
export COREPACK_ENABLE_AUTO_PIN=0
export PATH="/opt/homebrew/bin:$PATH"

