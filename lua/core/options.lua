local opt = vim.opt

opt.number = true
opt.wrap = false
opt.cursorline = true
opt.autochdir = true
opt.fileencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.hidden = true
opt.syntax = 'enable'
opt.showbreak = '↪'

opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.showmode = false

opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.clipboard:append('unnamedplus')

opt.termguicolors = true
opt.background = 'light'
opt.signcolumn = 'yes'
opt.guifont = {"CaskaydiaCove NF", "h12"}

opt.backspace = 'indent,eol,start'

opt.laststatus = 2
