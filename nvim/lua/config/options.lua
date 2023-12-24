-- local keyword
local opt = vim.opt

-- tabs and intendation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.wrap = false
opt.smartindent = true

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- appearance 
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.colorcolumn = '99'
opt.signcolumn = 'yes'
opt.cmdheight = 1
opt.completeopt = 'menuone,noinsert,noselect'
opt.scrolloff = 9

-- behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand('~/.nvim/undodir')
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.iskeyword:append("_")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
