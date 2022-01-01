local u = require('utils')

-- Telescope
u.nmap('<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])
u.nmap('<Leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
u.nmap('<Leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
u.nmap('<Leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])

-- NvimTree
u.nmap('<C-n>', ':NvimTreeToggle<CR>')
u.nmap('<Leader>r', ':NvimTreeRefresh<CR>')
u.nmap('<Leader>n', ':NvimTreeFindFile<CR>')

--- Phpcbf - Php-cs-fixer
u.nmap('<Leader>FB', '<cmd>!phpcbf %<CR>') -- Beautify
u.nmap('<Leader>FF', '<cmd>!php-cs-fixer --rules=@PSR12,@Symfony --using-cache=no fix %<CR>')

