#install pathogen -  https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install vim base 16 
cd ~/.vim/bundle
git clone https://github.com/chriskempson/base16-vim.git

#setup dotfiles
curl -o ~/.dircolors https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark

cp .bash_aliases ~/
cp .vimrc ~/

