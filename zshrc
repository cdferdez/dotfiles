# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$PATH:$HOME/Code/cdferdez/util/bin"
export MODULAR_HOME="/Users/cdferdez/.modular"
export PATH="/Users/cdferdez/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="/Users/cdferdez/Code/apache-maven-3.9.5/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="vim"
alias tm="tmux"
alias py="python"
alias lb="logbook"
alias cdf="cd ~ && cd \$(find * -type d | fzf)"

# pure prompt
fpath+="$HOME/.zsh/pure"
autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cdferdez/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cdferdez/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cdferdez/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cdferdez/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

