##### XDG Base Directory Specification Compliance #####
# Node.js
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/config
# Volta (https://volta.sh/)
export VOLTA_HOME="$XDG_DATA_HOME"/volta

#### Path ####
# Yarn
export PATH="$XDG_DATA_HOME/yarn/global/node_modules/.bin:$PATH"
# Volta
export PATH="$VOLTA_HOME/bin:$PATH"
