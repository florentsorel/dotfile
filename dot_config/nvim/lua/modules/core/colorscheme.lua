-- Colorscheme

-- https://github.com/Mofiqul/dracula.nvim
--

vim.cmd([[colorscheme dracula]])

vim.api.nvim_exec([[au BufRead,BufNewFile ~/.config/i3/config set filetype=i3config]], false)
