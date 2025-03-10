# Set the name of the static .zsh plugins file antidote will generate.
zsh_plugins=${ZDOTDIR:-$HOME}/zsh_plugins.zsh

zstyle ':antidote:bundle' use-friendly-names 'yes'

# Lazy-load antidote.
fpath+=(${ZDOTDIR:-$HOME}/.antidote)
autoload -Uz $fpath[-1]/antidote

# Generate static file in a subshell when .zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi

# Source your static plugins file.
source $zsh_plugins
