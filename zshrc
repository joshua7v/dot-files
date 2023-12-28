# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
alias px="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890;"
alias pc="unset http_proxy;unset https_proxy;"
alias gpo="git pull origin"
alias gpod="git pull origin develop"
alias gs='git status '
alias gd='git diff'
alias rclone='rclone --config ~/erinn/satori/rclone.conf'
alias neovide='/Applications/Neovide.app/Contents/MacOS/neovide --frame none'

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

eval "$(zoxide init zsh)"

# export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
# export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup

# export LDFLAGS="-L/usr/local/opt/llvm/lib"
# export CPPFLAGS="-I/usr/local/opt/llvm/include"

export ZSH=~/.oh-my-zsh
export GOPATH=~/golang
export PATH=$PATH:~/golang/bin
export PATH="/opt/homebrew/bin":$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8
export TZ=Asia/Shanghai
export EDITOR=nvim

export TIMER_FORMAT='%d'
export TIMER_PRECISION=2

export HISTSIZE=1000000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space

__timer_current_time() {
  perl -MTime::HiRes=time -e'print time'
}

__timer_format_duration() {
  local mins=$(printf '%.0f' $(($1 / 60)))
  local secs=$(printf "%.${TIMER_PRECISION:-1}f" $(($1 - 60 * mins)))
  local duration_str=$(echo "${mins}m${secs}s")
  local format="${TIMER_FORMAT:-/%d}"
  echo "${format//\%d/${duration_str#0m}}"
}

__timer_save_time_preexec() {
  __timer_cmd_start_time=$(__timer_current_time)
}

__timer_display_timer_precmd() {
  if [ -n "${__timer_cmd_start_time}" ]; then
    local cmd_end_time=$(__timer_current_time)
    local tdiff=$((cmd_end_time - __timer_cmd_start_time))
    unset __timer_cmd_start_time
    local tdiffstr=$(__timer_format_duration ${tdiff})
    local cols=$((COLUMNS - ${#tdiffstr} - 1))
    echo -e "\033[1A\033[${cols}C ${tdiffstr}"
  fi
}

preexec_functions+=(__timer_save_time_preexec)
precmd_functions+=(__timer_display_timer_precmd)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git wd web-search catimg encode64 urltools zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

function toon {
  echo -n "λ"
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%c%u%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}[%F{2}%b%c%u%F{5}]%f '
zstyle ':vcs_info:svn:*' branchformat '%b'
zstyle ':vcs_info:svn:*' actionformats '%F{5}[%F{2}%b%F{1}:%F{3}%i%F{3}|%F{1}%a%c%u%F{5}]%f '
zstyle ':vcs_info:svn:*' formats '%F{5}[%F{2}%b%F{1}:%F{3}%i%c%u%F{5}]%f '
zstyle ':vcs_info:*' enable git cvs svn

theme_precmd () {
  vcs_info
}

setopt prompt_subst
PROMPT='%{$fg[magenta]%}$(toon)%{$reset_color%} %~ %{$reset_color%}${vcs_info_msg_0_}%{$reset_color%}> '

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd

# pnpm
export PNPM_HOME="/Users/joshua/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

PATH=$(pyenv root)/shims:$PATH

unalias ls
alias ls="eza"
