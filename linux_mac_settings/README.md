## Useful Links
* Vim을 IDE처럼 사용하기: https://blog.b1ue.sh/vim-ide/
* .ycm_extra_conf.py 설정</br>
: https://neverapple88.tistory.com/26 (Korean)</br> 
 & https://programmer.group/installation-of-vim-plug-in-youcompleteme-for-mac.html (English)
~~~
$ echo | gcc -std=c++11 -v -E -x c++ -      " gcc를 사용할 경우
$ echo | clang -std=c++11 -stdlib=libc++ -v -E -x c++ -      "clang을 사용할 경우
~~~
## vim plugin
~~~
Plugin 'VundleVim/Vundle.vim'      " plugin installer package
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
~~~
~~~
Plugin 'scrooloose/nerdtree'       " show filelist
Plugin 'vim-airline'               " show beautiful airline
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'    " https://github.com/ycm-core/YouCompleteMe
Plugin 'morhetz/gruvbox'           " vim theme gruvbox
Plugin 'jiangmiao/auto-pairs'
~~~
~~~
Plugin 'scrooloose/syntastic' "syntax checker
Plugin 'Chiel92/vim-autoformat'</br>
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plugin 'davidhalter/jedi-vim'      " autocompletion for python
Plugin 'vim-scripts/L9'            " basic plugin
Plugin 'majutsushi/tagbar'         " show class, function, variable those have been used in current file (instead of 'taglist-plus')
Plugin 'kien/ctrlp.vim'            " find file by name (instead of 'command-t')
Plugin 'easymotion/vim-easymotion' " easily finding words
Plugin 'sjl/gundo.vim'             " show editted code log looks like git branch
Plugin 'tpope/vim-fugitive'        " git controller with vim (instead of 'vim-conflicted')
Plugin 'airblade/vim-gitgutter'    " show git file status diff</br>
Plugin 'godlygeek/tabular'         " aligning multilines with same form (ex select lines + :Tab + / + <char>
Plugin 'Tuxdude/mark.vim'
~~~
