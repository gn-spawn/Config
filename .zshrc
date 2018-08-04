#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# Syntax Highlight
alias c='pygmentize -O style=monokai -f console256 -g'
function cl() {
    c $1 | nl -n ln -b a
}
alias cl=cl
export LESS='-R'
export LESSOPEN='|lessfilter %s'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/gnat/bin:$PATH"

