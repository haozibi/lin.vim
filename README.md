# lin.vim : Lin Rongbin's (Neo)Vim Distribution

lin.vim is a highly configured [VIM](https://www.vim.org/)/[Neovim](https://neovim.io/) integrated tons of utilities for development running on most operating systems.

![pic1.jpg](https://raw.githubusercontent.com/linrongbin16/lin.vim/master/picture/pic1.jpg)

![pic2.jpg](https://raw.githubusercontent.com/linrongbin16/lin.vim/master/picture/pic2.jpg)

![pic3.jpg](https://raw.githubusercontent.com/linrongbin16/lin.vim/master/picture/pic3.jpg)

![pic4.jpg](https://raw.githubusercontent.com/linrongbin16/lin.vim/master/picture/pic4.jpg)

# Feature

- Running on multiple platforms: UNIX/Linux, Windows and MacOS.
- Code complete, lint and format for most programming languages by [coc.nvim](https://github.com/neoclide/coc.nvim).
- Random color schemes and pretty icons.
- File and buffer explorer and better status line.
- Source code and file fuzzy search.
- Useful command line utilities for: git, text search, file operation, datetime calculate, ip calculate.
- Support both [VIM](https://www.vim.org/) and [Neovim](https://neovim.io/).
- Customization.

# User Guide

### Hot Key
- `F1` in normal mode: open/close file explorer.
- `F2` in normal mode: open/close tagbar explorer.
- `F3` in normal mode: switch between C/C++ header source file.
- `F4` in normal mode: format current file.
- `F9` in normal mode: change color theme randomly.
- `F10` in normal mode: open/close terminal.

### Enhanced Copy Paste
- `<leader>y` in visual mode: copy visual-selected text to locale machine cache.
- `<leader>p` in normal mode: paste text saved from local machine cache.

### Search
- `:Ag [text]` or `:Rg [text]` in normal mode: search [text].
- `<c-p>` in normal mode: fuzzy search file.

### Easy Align
- `vipga=` in visual mode: align visual-selected paragraph.
- `gaip=` in normal mode: align inner paragraph.

### Easy Move
- `<leader>s [char]`: go to [char].
- `<leader>w`: go to [word].
- `<leader>j`: go to [forward line].
- `<leader>k`: go to [backward line].

### Coc.nvim Go To
- `gd` in normal mode: go to definition.
- `gy` in normal mode: go to type definition.
- `gi` in normal mode: go to implementation.
- `gr` in normal mode: go to reference.
- `[g` in normal mode: go to previous diagnostic.
- `]g` in normal mode: go to next diagnostic.

### Tags Go To
- `<c-o>` in normal mode: go back to previous position.
- `<c-]>` in normal mode: go to definition if `gd` not working.

### Commentary
- `gcc` in normal mode: comment one line.
- `gc` in visual mode: comment visual selection.

### File Explorer
- `ma` in normal mode: create new file/directory.
- `mc` in normal mode: copy file/directory.
- `md` in normal mode: delete file/directory.
- `mm` in normal mode: move file/directory.

### Buffer Explorer
- `<leader>bn` in normal mode: go to next buffer.
- `<leader>bp` in normal mode: go to previous buffer.
- `<leader>bd` in normal mode: close current buffer.

### Customization
- custom your own settings in `~/.vim/user.vim` and `~/.vim/coc-settings.json`.

### Command Line Utility
- try `vcmd` to find more.

# Installation

### Linux, UNIX, MacOS

```bash
    $ git clone https://github.com/linrongbin16/lin.vim ~/.vim && cd ~/.vim && ./install.sh
```

### Windows

Please use Powershell instead of CMD on Windows.

1. Install [Visual Studio](https://www.visualstudio.com/) with below options:
    * .NET Desktop Development.
    * Visual C++ Desktop Development.
    * Common Windows Platform Development.
2. Install [Hack Nerd Font Mono Windows Compatible](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack):
    * [Hack Regular Nerd Font Complete Mono Windows Compatible.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
    * [Hack Italic Nerd Font Complete Mono Windows Compatible.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
    * [Hack Bold Italic Nerd Font Complete Mono Windows Compatible.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
    * [Hack Bold Nerd Font Complete Mono Windows Compatible.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
3. Install third party dependencies with [chocolatey](https://chocolatey.org/) (run as administrator):
```bash
    $ choco install git python cmake vim llvm nodejs ag ripgrep universal-ctags
```
4. Install lin.vim (run as user):
```bash
    $ git clone https://github.com/linrongbin16/lin.vim %USERPROFILE%\.vim
    $ cd %USERPROFILE%\.vim
    $ install.bat
```
5. Add third party dependencies in `%PATH%`, add `%USERPROFILE%\.vim\command` to `%PATH%`.

### GUI fonts

lin.vim use fonts by default:

* [Hack Nerd Font Complete Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack) on UNIX/Linux
* [Hack Nerd Font Complete Mono Windows Compatible](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack) on Windows.

Please manually install other [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) and configure font settings in `~/.vim/user.vim` if you want to customize GUI fonts.

### Vim vs Neovim

Both Vim and Neovim are supported. `nvim` not installed by default. Please install Neovim manually if you need.

### Installation Failure Notification

lin.vim installation needs access:
* [github.com](https://github.com/).
* [raw.githubusercontent.com](https://raw.githubusercontent.com/).
* [chocolatey](https://chocolatey.org/) on Windows.

Please make sure your network is available before installation.
