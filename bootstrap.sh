#!/usr/bin/env bash

function installPackages() {
  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Homebrew"
  echo "----------------------------------------------------------------------"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Set Homebrew"
  echo "----------------------------------------------------------------------"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Check version of Homebrew(installed)"
  echo "----------------------------------------------------------------------"
  brew -v

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Make sure we're using the latest Homebrew"
  echo "----------------------------------------------------------------------"
  brew update

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Upgrade any already-installed formulae"
  echo "----------------------------------------------------------------------"
  brew upgrade
  
  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Git"
  echo "----------------------------------------------------------------------"
  # If you don't install this and only use 'git' supported by Mac OS, it's not the latest version
  brew install git

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Check version of Git"
  echo "----------------------------------------------------------------------"
  git --version

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install cask of Homebrew"
  echo "----------------------------------------------------------------------"
  brew install cask

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install mas of Homebrew"
  echo "----------------------------------------------------------------------"
  brew install mas

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Add additional taps"
  echo "----------------------------------------------------------------------"
  # ref: https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#additional-taps-optional
  brew tap homebrew/cask-fonts

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install fonts for Hack Nerd Font Mono"
  # dependency: brew tap homebrew/cask-fonts #######"
  echo "----------------------------------------------------------------------"
  brew install --cask font-hack-nerd-font

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Powerlevel10k"
  echo "----------------------------------------------------------------------"
  brew install powerlevel10k

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Figma"
  echo "----------------------------------------------------------------------"
  brew install --cask figma

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Brave browser"
  echo "----------------------------------------------------------------------"
  brew install --cask brave-browser

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install firefox developer edition"
  echo "----------------------------------------------------------------------"
  #brew tap homebrew/cask-versions
  brew install --cask firefox@developer-edition

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Google-drive"
  echo "----------------------------------------------------------------------"
  brew install --cask google-drive

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Alfred"
  echo "----------------------------------------------------------------------"
  brew install --cask alfred

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Alacritty"
  echo "----------------------------------------------------------------------"
  brew install --cask --no-quarantine alacritty

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install tmux"
  echo "----------------------------------------------------------------------"
  # ref: https://github.com/tmux/tmux/wiki/Installing
  # Dependencies
  # tmux tpm (ref: https://github.com/tmux-plugins/tpm)
  brew install tmux
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/tpm/

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install neovim"
  echo "----------------------------------------------------------------------"
  # ref: https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package
  brew install neovim

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Docker"
  echo "----------------------------------------------------------------------"
  brew install docker docker-compose

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Colima"
  echo "----------------------------------------------------------------------"
  brew install colima

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install node@18"
  echo "----------------------------------------------------------------------"
  brew install node@18

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install yarn"
  echo "----------------------------------------------------------------------"
  # -- must be installed after nodejs"
  brew install yarn

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install gh"
  echo "----------------------------------------------------------------------"
  brew install gh

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install ripgrep"
  echo "----------------------------------------------------------------------"
  brew install ripgrep

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install lazygit"
  echo "----------------------------------------------------------------------"
  brew install lazygit

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install gnu-sed"
  echo "----------------------------------------------------------------------"
  brew install gnu-sed

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Slack"
  echo "----------------------------------------------------------------------"
  brew install --cask slack
  
  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Notion"
  echo "----------------------------------------------------------------------"
  brew install --cask notion

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Logi-options-plus"
  echo "----------------------------------------------------------------------"
  brew install --cask logi-options-plus

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Mos"
  echo "----------------------------------------------------------------------"
  brew install --cask mos

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install Doll"
  echo "----------------------------------------------------------------------"
  brew install --cask doll

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Install KakaoTalk"
  echo "----------------------------------------------------------------------"
  mas install 869223134
}

function doIt() {
  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Create symbolic link for .zprofile(path for homebrew)"
  echo "----------------------------------------------------------------------"
  ln -s ~/dotfiles/.zprofile ~/.zprofile

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Create config directories"
  echo "----------------------------------------------------------------------"
  mkdir -p ~/.config/alacritty
  mkdir -p ~/.config/tmux
  mkdir -p ~/.docker
  mkdir -p ~/code/personal
  mkdir -p ~/code/frontend

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Start installPackages"
  echo "----------------------------------------------------------------------"
  installPackages;

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Configure git"
  echo "----------------------------------------------------------------------"
  git config --global user.name "Jisung Lee"
  git config --global user.email "jskurt9352@gmail.com"
  git config --global init.defaultBranch main

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Create symbolic links"
  echo "----------------------------------------------------------------------"
  ln -s ~/dotfiles/.aliases ~/.aliases
  ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
  ln -s ~/dotfiles/.alacritty.toml ~/.config/alacritty/alacritty.toml
  ln -s ~/dotfiles/.nvim ~/.config/nvim
  ln -s ~/dotfiles/.tmux.conf ~/.config/tmux/tmux.conf
  ln -s ~/dotfiles/.exports ~/.exports
  ln -s ~/dotfiles/.extras ~/.extras
  ln -s ~/dotfiles/.profile ~/.zshrc

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Configure docker"
  echo "----------------------------------------------------------------------"
  echo -e "{\n\t\"cliPluginsExtraDirs\": [\n\t\t\"/opt/homebrew/lib/docker/cli-plugins\"\n\t],\n\t\"currentContext\": \"colima\"\n}" > ~/.docker/config.json

  source ~/.zshrc
}

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Start doIt"
  echo "----------------------------------------------------------------------"
  doIt;

  echo $"\n\n\n"
  echo "----------------------------------------------------------------------"
  echo "########## Configurations are done!"
  echo "########## Do not forget to run 'Prefix + I' in tmux!"
  echo "########## Do not forget to run 'Mason' and 'LspInfo' in neovim!"
  echo "----------------------------------------------------------------------"

unset installPackages;
unset doIt;
