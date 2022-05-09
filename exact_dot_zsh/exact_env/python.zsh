# Set Path
export PATH="$HOME/.local/bin:$PATH"

if [ -z $PYENV_ROOT ]; then
	export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

# Cookiecutter
export COOKIECUTTER_CONFIG="$XDG_CONFIG_HOME/cookiecutter/config.yml"

export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
