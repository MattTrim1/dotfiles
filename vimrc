set nocompatible

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

"Reuse same window and switch from unsaved buffer without saving first
set hidden

"Better command-line completion
set wildmenu

"Show partial commands in last line of screens
set showcmd

"Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"Keep same indent when opening new line
set autoindent

"Don't always go to first character of line on certain movements
set nostartofline

"Show line numbers
set number
set relativenumber

"Tab spacing settings
set shiftwidth=4
set softtabstop=4
set expandtab

