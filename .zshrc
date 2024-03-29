# Path to your oh-my-zsh installation.
export ZSH=/Users/vincent/.oh-my-zsh

# Alias git -> hub
# eval "$(hub alias -s)"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="vincenzo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(rails git ruby wd)

# User configuration

export PATH="$PATH:/Users/vincent/.rvm/gems/ruby-1.9.3-p550/bin:/Users/vincent/.rvm/gems/ruby-1.9.3-p550@global/bin:/Users/vincent/.rvm/rubies/ruby-1.9.3-p550/bin:/Users/vincent/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/vincent/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gs="git status"
alias code="subl"
alias ebthme="cd ~/ebth/ebth-com"
alias gd="git diff"
alias whathaveidone="git diff"
alias whatamidoing="git for-each-ref --sort=-committerdate refs/heads/ | head"
alias be="bundle exec"
alias burt="(be rails c)"
alias macklin="(be rails s)"
alias guardme="(be guard)"
alias letswork="atom ."
alias pihole="networksetup -setdnsservers Wi-Fi 192.168.51.73 && sudo killall -HUP mDNSResponder"
alias mydns="networksetup -setdnsservers Wi-Fi 8.8.8.8 && sudo killall -HUP mDNSResponder"
alias notify="osascript -e 'display notification \"Tests done\"'"
alias screenshot="/Users/vincent/personal-projects/vincenzo-dotfiles/screenshot.sh"
alias start-crossroads="/Users/vincent/personal-projects/vincenzo-dotfiles/start-crossroads.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# Fior android development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export EDITOR='subl -w'
export REACT_DEBUGGER="open -g 'rndebugger://set-debugger-loc?port=8081' ||"
export SPOTIPY_CLIENT_ID='f7f6df9a5faf4f8e814d2c89646d7665'
export SPOTIPY_CLIENT_SECRET='3c856bc849a04f9dba25504e8ae2606b'
export SPOTIPY_REDIRECT_URI='http://myfaceis.sexy/'
export YOUTUBE_DEV_KEY='AIzaSyDdJbMLU1s9b12ykYESxYOarrHLRzwQMjc'

# Go stuff...
# export PATH=$PATH:$(go env GOPATH)/bin
# export GOPATH=$(go env GOPATH)
# export GOPATH=$HOME/personal-projects/go

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/vincent/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/vincent/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/vincent/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/vincent/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
