# virtualenvwrapper
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]; then
    export WORKON_HOME=~/.venvs
    export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
    source /usr/local/bin/virtualenvwrapper.sh
fi

export FCEDIT=nvim
