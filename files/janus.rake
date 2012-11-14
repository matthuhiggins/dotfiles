# just run rake in ~/.vim to install new additions

#autoclose parenthesis quotes and so on
vim_plugin_task "autoclose", "git://github.com/Townk/vim-autoclose.git"

#autoclose HTML
vim_plugin_task "ragtag", "git://github.com/tpope/vim-ragtag.git"

#syntax highlighting in Bundler
#:Bopen paperclip
#:Bsplit
vim_plugin_task "bundler" "git://github.com/tpope/vim-bundler.git"
#lisp for vim
vim_plugin_task "limp", "git://github.com/mikaelj/limp.git"

vim_plugin_task "abolish", "git://github.com/tpope/vim-abolish.git"

#slim templating language for VIM.
vim_plugin_task "slim", "git://github.com/bbommarito/vim-slim.git"
#hexs appear as colors in css
vim_plugin_task "vim-css-color", 'git://github.com/skammer/vim-css-color.git'