# Neovim configuration

:loud_sound: I'm a **front-end web developer** so most of plugins are configured based on **front-end web development**.

### Prerequisites

Install dependencies first and then install neovim plugins

### How to install 'neovim'

Please check the official website https://github.com/neovim/neovim

### How to configure it

After you clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim), you need to make a symbolic link

```zsh
ln -s ~/working-env/nvim ~/.config/
```

:pushpin: If you happen to clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim) repository not in home directory,
you have to change `~/working-env` to `path-you-cloned`

:pushpin: If you are using `github copilot`, you should start neovim and invoke `:Copilot setup`

### Dependencies

:pushpin: **I'm assuming you are using MacOS and homebrew in here...**

1. Node.js

```zsh
brew install nodejs
```

2. Yarn

```zsh
npm install --global yarn
```

3. Nerd Fonts

:pushpin: **After you install it, Please change your terminal font to 'Hack Nerd Font Mono'**

```zsh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

4. ripgrep

```zsh
brew install ripgrep
```

5. Fuzzy Finder

```zsh
brew install fzf
```

6. Bat

```zsh
brew install bat
```

7. Sed

```zsh
brew install gnu-sed
```
