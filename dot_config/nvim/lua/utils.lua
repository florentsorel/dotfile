local api = vim.api

local get_map_options = function(custom_options)
    local options = { noremap = true, silent = true }
    if custom_options then
        options = vim.tbl_extend('force', options, custom_options)
    end
    return options
end

local M = {}

M.map = function(mode, target, source, opts)
	api.nvim_set_keymap(mode, target, source, get_map_options(opts))
end
M.nmap = function(...)
    M.map('n', ...)
end
M.vmap = function(...)
    M.map('v', ...)
end
M.omap = function(...)
    M.map('o', ...)
end
M.imap = function(...)
    M.map('i', ...)
end

return M
