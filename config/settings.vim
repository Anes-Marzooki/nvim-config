let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

au BufEnter * set fo-=c fo-=r fo-=o     " set formatoptions-=rco, simply stops having comment on new line.
au! BufWritePost $MYVIMRC source %      " Saving in init.vim sources it. (:source $MYVIMRC)
" set tabstop=2                           " Tabs are 2 spaces.
" set softtabstop=2                       " Number of spaces that <Tab> uses when editing.
" set shiftwidth=2                       " Number of space characters used for indentation.
set autoindent                          " Atuto indent.
set clipboard+=unnamedplus              " Copy paste from clipboard from/to vim.
set cmdheight=1                         " Command line height (default 1).
set colorcolumn=81                      " 80 characters column.
" set conceallevel=0                      " Shows backticks in md files.
set cursorline                          " Highlights the current line.
set encoding=utf-8                      " Sets utf8 as the encoding displayed.
set expandtab                           " Changes tabs to spaces.
set equalalways                         " Splits are the same size.
set hidden                              " Keeps multiple buffers open.
set hlsearch                            " Highlights all matched search.
" set listchars+=precedes:<,extends:>
set ignorecase                          " Ignores case sensitivity.
set incsearch                           " Shows the matched charcters when searching.
set laststatus=2                        " Statusline even there's only one window ALWAYS!!!
set mouse+=a                            " Enables mouse support.
set nohlsearch                          " No highlights after searching is done.
set showmode                          " Remove mode information (unnecessary because it's displayed in the statusline)
set nowrap                              " Disables line wrapping.
set nu                                  " Enables line numbers.
set relativenumber                      " Line numbers relative to the current line.
set scrolloff=2                        " Always show x number of lines when scrolling.
" set scroll=5                            " Number of lines to scroll by.
" set sidescroll=999                        " Number of columns to scroll horizontaly offscreen.
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set showtabline=0                       " Show tabs (default 0:never, 1: more than one window, 2:always)
set sidescrolloff=10
set signcolumn=yes                      " Enables sign colomn.
set smartcase                           " Enables case sensitivity when using uppercases.
set smartindent                         " Shrewder and better auto indentation.
set smarttab                            " Better IQ for tabs.
set splitbelow                          " Horizontal splits to the bottom.
set splitright                          " Vertical splits to the right.
filetype plugin on
set nocompatible
set timeoutlen=500                      " Time to wait for a mapped sequence to complete.
set updatetime=300                      " faster completion.
" set guicursor=i:block                  " Set cursor to block.
" Blinking cursor in insert mode + horizontal cursor in visual and replace mode.
" set guicursor=i-c:block-iCursor-blinkwait300-blinkon200-blinkoff150,v-r-cr:hor50
set guicursor=i-c:ver50-iCursor-blinkwait300-blinkon200-blinkoff150,v-r-cr:hor50

" Treat <li> and <p> tags like the block tags they are.
let g:html_indent_tags = 'li\|p'

" Set indentation to 4 spaces in HTML files.
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=2 expandtab

" Turn on spell check for markdown files.
autocmd BufRead,BufNewFile *.md setlocal spell
set complete+=kspell
" spelllan=en_us

" Emoji in markdown using vim-emoji plugin:
" Completion with Ctrl-x Ctrl-u (i.e: :smi<ctrl-x><ctrl-u>)
augroup emoji_complete
    autocmd!
    autocmd Filetype markdown setlocal completefunc=emoji#complete
augroup END

" Vimwiki path
" let main_wiki = {}
" let main_wiki.path = '~/Personal/vimwiki/'
let g:vimwiki_list = [{'path': '~/Personal/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0



" setting the filetype as jsx for files that end in .js
augroup filetype_jsx
    autocmd!
    autocmd FileType javascript set filetype=javascriptreact
augroup END


" autocmd Filetype NvimTree setlocal tabstop=1 shiftwidth=1 softtabstop=1 expandtab
" augroup filetype_NvimTree
"   autocmd!
"   setlocal tabstop=5 shiftwidth=5 softtabstop=5
" augroup END

