mkdir -p ~/.config/nvim

if [ -e "~/.config/nvim/init.vim" ]; then
	echo "Moving old init.vim"
	mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
fi

ln -sf $(pwd)/init.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim <<< ":PlugInstall"
