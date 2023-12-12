# ZSH

## Installing Oh My Zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Clone

    cd ~
    git clone https://github.com/gafhyb/zsh.git .zsh

## Submodules

    cd .zsh
    git submodule init
    git submodule update

## Symbolic links

    cd ~
    ln -s .zsh/zshrc .zshrc
    ln -s .zsh/zshenv .zshenv

## Spaceship

    git clone https://github.com/spaceship-prompt/spaceship-prompt.git $ZSH_CUSTOM/themes/spaceship-prompt
    ln -s $ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme $ZSH_CUSTOM/themes/spaceship.zsh-theme
