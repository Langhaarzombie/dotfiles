cd ~
echo "Installing Homebrew...\n"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\nReloading bash...\n"
exec bash

echo "\nInstalling zsh...\n"
brew install zsh zsh-completions

echo "\nConfiguring system to work with Homebrew...\n"
echo 'export PATH="/usr/local/bin:$PATH"\n' >> ~/.zshrc

echo "\nInstalling OhMyZsh...\n"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

chsh -s /usr/local/bin/zsh

echo "\nTesting and updating Homebrew...\n"
brew doctor
brew update

echo "\nInstalling quicklook improvements...\n"
brew cask install \
    qlcolorcode \
    qlstephen \
    qlmarkdown \
    quicklook-json \
    qlimagesize \
    qlprettypatch \
    quicklook-csv \
    quicklookase \
    qlvideo \
    betterzipql \
    webpquicklook \
    suspicious-package

echo "\nInstalling default apps...\n"
brew cask install \
    alfred \
    android-file-transfer \
    appcleaner \
    discord \
    docker \
    dropbox \
    google-chrome \
    jumpshare \
    karabiner-elements \
    keepassx \
    keepingyouawake \
    latexian \
    moeditor \
    numi \
    shifty \
    slack \
    spotify \
    spotify-notifications \
    steam \
    sublime-text \
    superduper \
    vlc \
    whatsapp

echo "\nInstalling default non-cask apps...\n"
brew install \
    ack \
    antigen \
    autojump \
    fzf \
    git \
    git-flow-avh \
    neovim \
    openconnect \
    ruby \
    screenfetch \
    tree \
    wget \
    zsh-autosuggestions \
    zsh-syntax-highlighting

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh\n" >> ~/.zshrc
# For errors with syntax highlight
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

echo "\nInstalling some extra stuff...\n"
#brew tap caskroom/fonts

cd ~
echo "source /usr/local/share/antigen/antigen.zsh\nantigen use oh-my-zsh" >> ~/.antigenrc
echo "antigen bundle git" >> ~/.antigenrc
echo "antigen bundle sudo" >> ~/.antigenrc
echo "antigen bundle git-flow" >> ~/.antigenrc
echo "antigen bundle alias-tips\n" >> ~/.antigenrc

echo "antigen apply" >> ~/.antigenrc

echo "source .antigenrc" >> ~/.zshrc

echo "\nInstalling aliases and command mods...\n"
echo "#Aliases and command mods\ncd() { builtin cd "$@" && ls; }" >> ~/.zshrc
echo 'alias reload = "exec zsh"' >> ~/.zshrc
echo 'alias j = "autojump"' >> ~/.zshrc
echo 'alias l="ls -a"\n' >> ~/.zshrc
echo 'alias g="git"' >> ~/.zshrc
echo 'alias oc="openconnect"' >> ~/.zshrc

echo 'export LANG=en_US.utf8' >> ~/.zshrc

echo 'clear' >> ~/.zshrc

echo "\nConfiguring git...\n"
git config --global user.name "Langhaarzombie"
git config --global user.email "mixmax199989@gmail.com"

git config --global core.excludesfile ~/.gitignore
cat ../Git/defaultignore > ~/.gitignore

# git config --global mergetool.sublime.cmd "subl -w \$MERGED"
# git config --global mergetool.sublime.trustExitCode false
# git config --global merge.tool sublime
# git mergetool -y

echo "\nCleaning up...\n"
brew cleanup

echo "\n========= FINISHED! ==========\n"
exec zsh
echo "\nInstalled casks via Homebrew:\n"
brew cask list
echo "\nInstlled non-casks via Homebrew:\n"
brew list
echo "\nCheck below for any errors:\n"
echo "Zsh version:"
zsh --version
echo "Docker version:"
docker --version
echo "Ruby version:"
ruby --version
echo "Git version:"
git --version
# more pls
echo "Git installation (should be /usr/local/bin/git)"
which git
