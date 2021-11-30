-- https://github.com/kyazdani42/nvim-tree.lua

local g = vim.g

vim.g["nvim_tree_quit_on_open"] = 1
vim.g["nvim_tree_indent_markers"] = 0
vim.g["nvim_tree_git_hl"] = 1
vim.g["nvim_tree_highlight_opened_files"] = 0
vim.g["nvim_tree_root_folder_modifier"] = ':~'
vim.g["nvim_tree_add_trailing"] = 1
vim.g["nvim_tree_group_empty"] = 1
vim.g["nvim_tree_disable_window_picker"] = 0
vim.g["nvim_tree_icon_padding"] = ' '
vim.g["nvim_tree_symlink_arrow"] = ' ➛ '
vim.g["nvim_tree_respect_buf_cwd"] = 0
vim.g["nvim_tree_create_in_closed_folder"] = 0
vim.g["nvim_tree_refresh_wait"] = 1000
vim.cmd([[
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
]])
vim.cmd([[
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
]])
vim.cmd([[
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
]])

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
