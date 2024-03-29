# quick and dirty: assuming the old files can be removed and the files to be
# symlinked are in ~/.dotfiles/

# zsh config
# install zsh first, e.g. `sudo apt-get install zsh`
rm -rf ~/.oh-my-zsh && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf ~/.zshrc && ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# tmux
# install tmux first, e.g. `sudo apt-get install tmux`
brew install tmux
brew install reattach-to-user-namespace
rm -rf ~/.tmux.conf && ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf

# tmuxinator
brew install tmuxinator
rm -rf ~/.tmuxinator && ln -s ~/.dotfiles/tmuxinator ~/.tmuxinator

# vim config
# install vim first, e.g. `sudo apt-get install vim`
brew install vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
rm -rf ~/.vimrc && ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
rm -rf ~/.vimrc.code && ln -s ~/.dotfiles/vim/vimrc.code.symlink ~/.vimrc.code
rm -rf ~/.vimrc.prose && ln -s ~/.dotfiles/vim/vimrc.prose.symlink ~/.vimrc.prose

npm install --global trash-cli
