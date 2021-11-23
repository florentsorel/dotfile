local u = require('utils')

vim.g.mapleader = ','

--- Quick file save
u.map('n', '<leader>ss', '<cmd>w<cr>')

--- Move current line up/down
u.vmap('<A-j>', ":m '>+1<CR>gv=gv")
u.vmap('<A-k>', ":m '<-2<CR>gv=gv")

-- Copy text to clipboard
u.vmap('<C-c>', '"+y')

--
u.nmap('<Leader><Space>', ':nohlsearch<CR>')

u.nmap('<C-j>', '<C-w><C-j>')
u.nmap('<C-k>', '<C-w><C-k>')
u.nmap('<C-h>', '<C-w><C-h>')
u.nmap('<C-l>', '<C-w><C-l>')

-- Resize
u.nmap('<C-S-Left>', ':vertical resize -1<CR>')
u.nmap('<C-S-Right>', ':vertical resize +1<CR>')
u.nmap('<C-S-Up>', ':resize +1<CR>')
u.nmap('<C-S-Down>', ':resize -1<CR>')

-- Tab
-- u.nmap('<C-t><Up>', ':tabr<CR>')
-- u.nmap('<C-t><Down>', ':tabl<CR>')
-- u.nmap('<C-t><Left>', ':tabp<CR>')
-- u.nmap('<C-t><Right>', ':tabn<CR>')

-- Telescope
u.nmap('<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>]])
u.nmap('<Leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
u.nmap('<Leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
u.nmap('<Leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])

--- Phpcbf - Php-cs-fixer
u.nmap('<Leader>FB', '<cmd>!phpcbf %<CR>') -- Beautify
u.nmap('<Leader>FF', '<cmd>!php-cs-fixer --rules=@PSR12 --using-cache=no fix %<CR>')

-- Open nvim config file
u.nmap('<Leader>ev', ':tabedit ~/.config/nvim/init.lua<CR>')
