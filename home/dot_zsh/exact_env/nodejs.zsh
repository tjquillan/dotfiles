##### XDG Base Directory Specification Compliance #####
# Node.js
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/config

# NVM (https://github.com/nvm-sh/nvm)
export NVM_DIR="$XDG_DATA_HOME"/nvm

# Volta (https://volta.sh/)
export VOLTA_HOME="$XDG_DATA_HOME"/volta

#### Path ####
# Volta
export PATH="$VOLTA_HOME/bin:$PATH"

#### Other ####
# Astro
export ASTRO_TELEMETRY_DISABLED=1
