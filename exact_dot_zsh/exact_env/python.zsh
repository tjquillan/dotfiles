if [ -z $PYENV_ROOT ]; then
	export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

##### XDG Base Directory Specification Compliance #####
# Cookiecutter (https://cookiecutter.readthedocs.io/en/stable/)
export COOKIECUTTER_CONFIG="$XDG_CONFIG_HOME"/cookiecutter/config.yml
# MyPy (http://www.mypy-lang.org/)
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
# Pylint (https://pylint.org/)
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PYLINTRC="$XDG_CONFIG_HOME"/pylint/pylintrc
# Conda (https://www.anaconda.com/)
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"

#### Path ####
export PATH="$HOME/.local/bin:$PATH"

