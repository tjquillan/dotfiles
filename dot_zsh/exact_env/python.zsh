##### XDG Base Directory Specification Compliance #####
# Python
export PYTHON_HISTORY="$XDG_STATE_HOME"/python/history
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME"/python
export PYTHONUSERBASE="$XDG_DATA_HOME"/python

# Setuptools
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME"/python-eggs

# Cookiecutter (https://cookiecutter.readthedocs.io/en/stable/)
export COOKIECUTTER_CONFIG="$XDG_CONFIG_HOME"/cookiecutter/config.yml

# MyPy (http://www.mypy-lang.org/)
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy

# Pylint (https://pylint.org/)
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PYLINTRC="$XDG_CONFIG_HOME"/pylint/pylintrc

# Conda (https://www.anaconda.com/)
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"

# Pyenv (https://github.com/pyenv/pyenv)
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"

# PipX (https://pypa.github.io/pipx/)
export PIPX_HOME="$XDG_DATA_HOME/pipx"

#### Path ####
export PATH="$HOME/.local/bin:$PATH"
PATH="$PYENV_ROOT/bin:$PATH"

#### Pyenv ####
export PYTHON_BUILD_ARIA2_OPTS="-x 10 -k 1M"

#### Pipenv ####
export PIPENV_VENV_IN_PROJECT=1
