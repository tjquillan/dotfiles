##### XDG Base Directory Specification Compliance #####
# Fvm (https://fvm.app)
export FVM_HOME="$XDG_DATA_HOME/fvm"
# Pub (https://dart.dev/tools/pub/environment-variables)
export PUB_CACHE="$XDG_CACHE_HOME/pub"

##### Path #####
export PATH="$FVM_HOME/default/bin:$PATH"

