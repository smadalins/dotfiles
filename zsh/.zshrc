# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# profiling
# zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
# ZSH_THEME="pygmalion"
# ZSH_THEME="powerlevel11k/powerlevel10k"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# fzf configurations
export FZF_BASE=fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"
# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# lsmple format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  macos
  tmux
  # web-search
  fzf
  fzf-tab
  colorize
  nvm
  node
  npm
  vi-mode
  # docker
  # pip
  # django
  # git-extras
  # httpie
  # jsontools
  # history
  # python
  # zsh-syntax-highlighting
  # kubectl
  # pyenv
)

source $ZSH/oh-my-zsh.sh

# Toggle fzf-tab
toggle-fzf-tab

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
## git
alias g='git'
## system
alias s='sudo'
alias h='history'
## diff
alias diff='colordiff -u'
## tree
alias tree='tree -C'
## Vim
alias vi='nvim'
alias vimdiff='nvim -d'
## eza
alias ls='eza --icons=always'
# alias ll='eza -lbF --git' # list, size, type, git
# alias llm='eza -lbGd --git --sort=modified' # long list, modified date sort
# alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale' # all list
# alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
# alias lS='eza -1' # one column, just names
# alias lt='eza --tree --level=2' # tree
eval "$(zoxide init zsh)"
alias cd='z'

# Local exports
export PROJECT_HOME=~/Projects
# Python
export PATH="$HOMEBREW_PREFIX/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PYTHON_CONFIGURE_OPTS="--enable-framework"
export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH" # add posix grep

# Pyenv
export PATH="$(pyenv root)/shims:$PATH"
export PYENV_ROOT=/Users/stanislawmadalinskipietka/.pyenv 

# extra libs Smarnic
export DYLD_LIBRARY_PATH=$HOMEBREW_PREFIX/opt/openssl/lib:$DYLD_LIBRARY_PATH
export DYLD_FALLBACK_LIBRARY_PATH=$HOMEBREW_PREFIX/opt/openssl/lib:$DYLD_FALLBACK_LIBRARY_PATH

export DYLD_LIBRARY_PATH=$HOMEBREW_PREFIX/opt/libdnet/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$HOMEBREW_PREFIX/opt/libpcap/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$HOMEBREW_PREFIX/opt/zeromq/lib:$DYLD_LIBRARY_PATH
export PATH="$HOMEBREW_PREFIX/opt/openssl@1.1/bin:$PATH"

## Jenkins API
# export JENKINS_URL=https://jenkins.smartnic.codilime.com
# export JENKINS_CLI_JAR_PATH=~/bin/jenkins-cli.jar
# export JENKINS_USER_ID=stanislaw.madalinski
# export JENKINS_API_TOKEN=11a4e7d5c69f3745ad4b1dd6a33f28411b
# alias jenkins-cli='java -jar ~/Downloads/jenkins-cli.jar -noCertificateCheck'

## Compile
## For compilers to find zlib, sqlite you may need to set:
#LDFLAGS= "${LDFLAGS} -L/usr/local/opt/zlib/lib"
#LDFLAGS+= " -L/usr/local/opt/sqlite/lib"
#CPPFLAGS= "${CPPFLAGS} -I/usr/local/opt/zlib/include"
#CPPFLAGS+= " -I/usr/local/opt/sqlite/include"
#
## For pkg-config to find zlib, sqlite you may need to set:
#PKG_CONFIG_PATH= "${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
#PKG_CONFIG_PATH+= " /usr/local/opt/sqlite/lib/pkgconfig"

## Settings
# ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
#ZSH_THEME="avit".
DEFAULT_USER=stanislawmadalinskipietka

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source $(brew --prefix)/opt/powerlevel10k/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## FZF
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with ls when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
zstyle ':fzf-tab:*' prefix ''
zstyle ':fzf-tab:*' fzf-bindings 'space:accept'
zstyle ':fzf-tab:*' fzf-min-height 25
enable-fzf-tab

# Node configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")" --silent)

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install --silent
    elif [ "$nvmrc_node_version" != "$(nvm version --silent)" ]; then
      nvm use --silent
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    # echo "Reverting to nvm default version"
    nvm use default --silent
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# 1password integration
OP_BIOMETRIC_UNLOCK_ENABLED=true
eval "$(op completion zsh)"; compdef _op op

# bind additional keys
bindkey -s ^f "tmux-sessionizer\n"