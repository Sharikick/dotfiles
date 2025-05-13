#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="exa -lh"

export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:$HOME/.local/share/nvim/mason/bin"

eval "$(starship init bash)"
. "$HOME/.cargo/env"
