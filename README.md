# lin-vim : Lin Rongbin's Vim Distribution


         _   _                    _
        | | (_)____       __   __(_)_ __ ___
        | | | |  _ \ _____\ \ / /| | '_ ` _ \
        | | | | | | |_____|\ V / | | | | | | |
        |__\|_|_| |_|       \_/  |_|_| |_| |_|



lin-vim is a distribution of Vim and DevTools.

It is for anyone intending to use VIM for development running equally well on Windows, Linux, \*nix and Mac.

# Installation

### Linux, UNIX, MacOS Installation

```bash
    git clone https://github.com/linrongbin16/lin-vim ~/.vim && cd ~/.vim && bash install.sh
```

### Windows Installation

Install on Windows mannually:
1. Install [Git](https://git-scm.com/), during setup choose **Use Git from Windows Command Prompt** since we reply on UNIX command.
2. Install [7-zip](http://www.7-zip.org/).
3. Install [Python27](https://www.python.org/downloads/release/python-2714/), during setup choose **Add python to PATH**.
4. Install [CMake](https://cmake.org/), during setup choose **Add cmake to PATH**.
5. Install [Vim for Windows](https://tuxproject.de/projects/vim/), add **gvim.exe** to **PATH**.
6. Install [Visual Studio](https://www.visualstudio.com/), during setup choose **VC++**.
7. Install [LLVM](http://releases.llvm.org/download.html) for C/C++, during setup choose **Add LLVM to PATH**.
8. Install [Golang](https://golang.org/) for Golang, add **Add Go to PATH**, add `GOPATH=%HOMEPATH%/go`, `%GOPATH%/bin`, `%GOROOT%/bin` to **PATH**.
9. Install [JavaSE](http://www.oracle.com/technetwork/java/javase/downloads/index.html), [Maven](https://maven.apache.org/download.cgi), [Gradle](https://gradle.org/install/#manually) for Java, add **java** **mvn** **gradle** to **PATH**, add **CLASSPATH**, **JAVA_HOME** to **PATH**.
10. Install [NodeJs](https://nodejs.org/) for Javascript, during setup choose **Add Nodejs to PATH**

```bash
    git clone https://github.com/linrongbin16/lin-vim %HOMEPATH%\.vim
    mkdir %HOMEPATH%\.ssh
    cd %HOMEPATH%\.vim
    curl -fLo %HOMEPATH%\.vim\autoload\plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp %HOMEPATH%\.vim\lin-vim.vimrc %HOMEPATH%\_vimrc
    vim -c "PlugInstall" -c "qall"
    cd %HOMEPATH%\.vim\plugged\YouCompleteMe
    python install.py --clang-completer --go-completer --java-completer --js-completer
    npm config set unsafe-perm true
    npm install -g js-beautify standard eslint xo typescript-formatter sass remark-cli
    python -m pip install pyOpenSSL pyflakes pep8 flake8 pylint cpplint pyOpenSSL autopep8 pathlib
    cd %HOMEPATH%\.vim
```

# A highly optimized .vimrc config file

The .vimrc file is suited to programming.
* Used across Linux, Windows and Mac.
* Completion Engine based on YouCompleteMe, UltiSnip, Ctags.
* Multiple Languages supported.
* Configured plugins.

# Fork me on GitHub

Happy to take pull requests. Go ahead and fork me.
