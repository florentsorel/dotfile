-- https://github.com/kyazdani42/nvim-tree.lua
vim.cmd([[
    let g:nvim_tree_indent_markers = 0
    let g:nvim_tree_git_hl = 1
    let g:nvim_tree_highlight_opened_files = 0
    let g:nvim_tree_root_folder_modifier = ':~'
    let g:nvim_tree_add_trailing = 1
    let g:nvim_tree_group_empty = 1
    let g:nvim_tree_icon_padding = ' '
    let g:nvim_tree_symlink_arrow = ' ➛ '
    let g:nvim_tree_respect_buf_cwd = 0
    let g:nvim_tree_create_in_closed_folder = 0
    let g:nvim_tree_refresh_wait = 1000
]])

require('nvim-tree').setup({
    auto_close = false,
    hijack_cursor = true,
    update_cwd = false,
    nvim_tree_ignore = { '.git', '.cache', 'node_modules', 'vendor' },
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
    },
    actions = {
        open_file = {
            quit_on_open = true,
            window_picker = {
                enable = false,
            }
        }
    }
})
