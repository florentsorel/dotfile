-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local o = vim.opt
local w = vim.wo
local fn = vim.fn

-- global settings
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.autoindent = true
o.expandtab = true
o.softtabstop = 4
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true
o.modeline = false

o.hlsearch = true
o.incsearch = true
o.undofile = true
o.undodir = fn.expand('~') .. '/.local/share/nvim/undo'
w.cursorline = false
w.number = true
o.relativenumber = false
o.wrap = false
o.signcolumn = 'yes'
o.backspace = [[indent,eol,start]]
o.hidden = true
o.ignorecase = true
o.joinspaces = false
o.scrolloff = 8
o.sidescrolloff = 8
o.shiftround = true
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.updatetime = 50
o.inccommand = 'nosplit'
o.errorbells = false
o.swapfile = false
o.backup = false
o.cmdheight = 1
o.termguicolors = true
o.syntax = 'enable'
w.colorcolumn = '120'
vim.cmd([[
    :hi ColorColumn guibg=lightmagenta
]])

vim.cmd([[
    filetype indent plugin on
]])

require('modules.core')
require('modules.lsp')
require('modules.plugins')
