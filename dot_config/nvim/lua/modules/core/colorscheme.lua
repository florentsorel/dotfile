-- Colorscheme

-- https://github.com/marko-cerovac/material.nvim
vim.g.material_style = 'palenight'

require('material').setup({
    contrast = false,
    italics = {
        comments = true,
        functions = false,
    },
    contrast_windows = {
        'terminal',
        'packer',
        'qf',
    },
    text_contrast = {
        lighter = false,
        darker = false,
    },
    disable = {
        background = false,
    },
})

vim.cmd([[colorscheme material]])

vim.api.nvim_exec([[au BufRead,BufNewFile ~/.config/i3/config set filetype=i3config]], false)
