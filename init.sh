# Install dependencies
sudo apt update
sudo apt install git curl wget sed neovim

# Set up Neovim
DEST=~/.config/nvim/
if ! [[ -d $DEST ]]; then mkdir $DEST; fi
cp ./init.vim $DEST

DEST=~/.local/share/nvim/site/pack/nerdtree/start/nerdtree
if [[ -d $DEST ]]; then rm -rf $DEST; fi
git clone https://github.com/scrooloose/nerdtree.git $DEST

sudo curl -fsSL https://raw.githubusercontent.com/lifepillar/vim-solarized8/master/colors/solarized8_flat.vim \
  -o /usr/share/nvim/runtime/colors/solarized8_flat.vim

# Install browsers
(
  cd ../../browser/
  (cd google-chrome && sudo dpkg -i google-chrome-unstable_current_amd64.deb)
  (cd tor-browser && tar xvf tor*.tar.xz -C ~ && cd ~/tor* && ./start-tor-browser.desktop --register-app)
)

# Set up development environment
(
  cd ../../dev/
  (cd node && ./install-13*.sh)
  (cd sublime && ./install.sh)
  (cd vscode && sudo dpkg -i code-insiders*.deb)
)

# Install linux-surface
git clone --depth 1 https://github.com/jakeday/linux-surface.git ~/linux-surface
cd ~/linux-surface
sudo sh setup.sh
