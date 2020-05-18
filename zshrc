source $HOME/.antigen/antigen.zsh

# This setting must be before the plugins are loaded
export NVM_AUTO_USE=true

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git

antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme
antigen theme fjpalacios/elessar-theme elessar

# Tell antigen that you're done
antigen apply

# update LESS to exit when only one page to help git pager
# https://stackoverflow.com/questions/48341920/git-branch-command-behaves-like-less#comment92614882_48370253
export LESS="--no-init --quit-if-one-screen -R"

#
#  PATH variables
#  (Order matters!!)
#
PATH="$HOME/.bin:$PATH"
#  This one adds node module binaries to the PATH dynamically if
#  the directory in question has a .git/safe directory present.
PATH=".git/safe/../../node_modules/.bin:$PATH"
export -U PATH

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# TODO: Add script to check antigen for updates perodically
