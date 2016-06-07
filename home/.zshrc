source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Add zsh command architect
antigen bundle psprint/zsh-cmd-architect

# Load the theme.
antigen bundle nojhan/liquidprompt

# Tell antigen that you're done.
antigen apply

# Direnv
eval "$(direnv hook zsh)"

# Using Pygments with less
export LESS='-R'
export LESSOPEN='|~/bin/lessfilter %s'

# Better locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Home binaries in path
typeset -U path
path=(~/bin $path)

#
fpath=(/usr/local/share/zsh-completions $fpath)

# Access Docker if it is working
eval "$(docker-machine env default)"
