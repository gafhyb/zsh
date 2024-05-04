# virtualenvwrapper
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]; then
    export WORKON_HOME=~/.venvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source /usr/local/bin/virtualenvwrapper.sh
fi

export FCEDIT=nvim
