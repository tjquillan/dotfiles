if [ -z $PYENV_ROOT ]; then
	export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

##### XDG Base Directory Specification Compliance #####
# Cookiecutter
export COOKIECUTTER_CONFIG="$XDG_CONFIG_HOME/cookiecutter/config.yml"
# MyPy
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy

#### Path ####
export PATH="$HOME/.local/bin:$PATH"