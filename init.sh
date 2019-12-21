cp ./init.vim ~/.config/nvim/

# Install NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.local/share/nvim/site/pack/nerdtree/start/nerdtree

# Install solarized color scheme
cd /usr/local/share/nvim/runtime/colors
curl -fsSL https://raw.githubusercontent.com/lifepillar/vim-solarized8/master/colors/solarized8_flat.vim -o solarized8_flat.vim
