# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export TUIR_BROWSER="qutebrowser"
export ZSH="/home/$USER/.oh-my-zsh"
export VISUAL="emacsclient -c -a 'emacs'"
export EDITOR=nvim
export PATH="$HOME/.emacs.d/bin:$HOME/.local/bin:$PATH"
export HISTCONTROL=ignoredups:erasedups

unsetopt autocd #this is just a pain in the ass most of the time


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="jovial"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # autojump
  urltools
  # bgnotify
  zsh-autosuggestions
  zsh-syntax-highlighting
  # zsh-history-enquirer
  # jovial
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'

# Lines configured by zsh-newuser-install

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

# base aliases
alias sudo='sudo ' #use aliases with sudo
alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias lah='ls -lah'
alias vim='nvim'
alias cls='clear'
alias mv='mv -i'
# alias rm='rm -i'
alias ka='killall'
alias rm='echo "Did you mean trash-put(tp)?. Try \\\rm if you really want to use rm."'
alias tp='trash-put'
alias mkd='mkdir -pv'
alias chx='sudo chmod +x'

# ext aliases
alias resemacs='killall emacs && \emacs --daemon && nohup emacsclient -c >&/dev/null &'
alias joplind='joplin --profile ~/.config/joplin-desktop/' #joplin-cli use joplin-desktop data
alias tmuxa='tmux attach -t 0'
alias wlg='nohup wl-gammactl -g' #wayland extended brightness
alias xrandrbr='xrandr --output eDP1 --brightness' #set extended brightness
alias emacs="~/.config/misc/emacs-launch.sh"
alias yt="yt-dlp"
# alias wifite='airmon-ng start wlp1s0 && sudo wifite $@ && sudo airmon-ng stop wlp1s0mon'

hack() { sudo airmon-ng start wlp1s0 && sudo wifite --dict /home/hp/passlist/top10kvn.txt "$@" && sudo airmon-ng stop wlp1s0mon }

cdl() { cd "$@" && ls; }

pfetch

# [[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"



PATH="/home/hp/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/hp/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/hp/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/hp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="IN"

set -o vi

function  vi-yank-xclip {
	zle vi-yank
	echo "$CUTBUFFER" | xclip -i
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

bindkey "^R" history-incremental-search-backward

setopt histignoredups
unsetopt autocd #this is just a pain in the ass most of the time

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
