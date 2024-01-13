
--[[ opts.lua ]]--
vim.opt.breakindent = true

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab=true

--vim.opt.tabstop=4
--vim.opt.softtabstop=4
--vim.opt.shiftwidth=4
--Note: these can be set by ftplugin (and overrides this file)
--e.g. /opt/homebrew/Cellar/neovim/0.9.4/share/nvim/runtime/ftplugin/python.vim
--has the following lines:
--" As suggested by PEP8.
--setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.opt.showmatch=true
vim.opt.ignorecase=true
vim.opt.number=true

--this is on by default in vim
--vim.opt.hlsearch=true
--this is on by default in neovim
--vim.opt.incsearch=true

vim.opt.smartcase=true
vim.opt.laststatus=2

vim.opt.whichwrap:append('h,l,<,>')

--vim.opt.listchars = {eol = '↲', tab = '▴•', trail = '•', extends = '╳', precedes = '╳'}
vim.opt.listchars = {eol = '↲', tab = '⛛◦', space = '•', trail = '░', extends = '╳', precedes = '╳'}
-- • ∙ ◦ ⇥ ␉ ⛛ ▷ ⛝ █ ▓ ▒ ░

-- vim.opt.wildoptions=""         --no PUM, makes it a horiz layout
vim.opt.wildmode="longest:full,full"


vim.opt.undofile=true
