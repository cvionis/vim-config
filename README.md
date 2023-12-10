# nvim-config
Personal settings and plugins for neovim

<h2>Installation</h2>

Clone the repository into your `~/.config/nvim` directory
```
git clone https://github.com/cvionis/nvim-config.git ~/.config/nvim/
```
Install vim-plug if it's not installed already
```
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Open a file using nvim and execute the ``PlugInstall!`` command
