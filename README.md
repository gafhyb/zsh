# ZSH

## Installing Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Clone
    cd ~
    git clone git@github.com:gafhyb/zsh.git

## Submodules
    cd zsh
    git submodule init
    git submodule update

## Symbolic links
    ln -s .zsh/zshrc .zshrc
    ln -s .zsh/zshenv .zshenv
