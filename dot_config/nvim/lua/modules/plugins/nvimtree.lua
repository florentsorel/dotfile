-- https://github.com/kyazdani42/nvim-tree.lua
require('nvim-tree').setup({
    auto_close = true,
    hijack_cursor = true,
    update_cwd = true,
    nvim_tree_ignore = { '.git', '.cache', 'node_modules', 'vendor' },
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
    },
})

local u = require('utils')

u.map('n', '<F3>', [[<cmd>lua require('nvim-tree').toggle()<cr>]])
u.map('n', '<leader>tr', [[<cmd>lua require('nvim-tree').refresh()<cr>]])
