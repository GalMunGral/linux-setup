cp ./init.vim ~/.config/nvim/

# Install NERDTree
dest=~/.local/share/nvim/site/pack/nerdtree/start/nerdtree
if [[ -d "$dest" ]]; then
	echo 'NERDTree already installed!'
else
	git clone https://github.com/scrooloose/nerdtree.git 
fi

# Install solarized color scheme
dl_path=https://raw.githubusercontent.com/lifepillar/vim-solarized8/master/colors/solarized8_flat.vim
path_1=/usr/share/nvim/runtime/colors/
path_2=/usr/local/share/nvim/runtime/colors
if [[ -d "$path_1" ]]; then
  cd "$path_1"
else
  cd "$path_2"
fi
echo "Downloading solarized8 into $(pwd)"
sudo curl -fsSL "$dl_path" -o solarized8_flat.vim
