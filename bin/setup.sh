# quick and dirty: assuming the old files can be removed and the files to be
# symlinked are in ~/.dotfiles/

# tmuxifier
rm -rf ~/.tmuxifier && git clone https://github.com/bredikhin/tmuxifier.git ~/.tmuxifier

# git up
# install ruby, rubygems, ruby-dev first, e.g. `sudo apt-get install ruby rubygems ruby-dev`
sudo gem install git-up

# vim config
# install vim first, e.g. `sudo apt-get install vim`
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
rm -rf ~/.vimrc && ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc

# zsh
rm -rf ~/.oh-my-zsh && curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
rm -rf ~/.zshrc && ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

# tmux
# install tmux first, e.g. `sudo apt-get install tmux`
rm -rf ~/.tmux.conf && ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
