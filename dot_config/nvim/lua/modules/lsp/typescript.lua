local u = require('utils')
local config = require('modules.lsp.config')
local lspconfig = require('lspconfig')

require('lspconfig').tsserver.setup{
    root_dir = lspconfig.util.root_pattern('package.json'),
    init_options = require('nvim-lsp-ts-utils').init_options,
    on_attach = function(client, bufnr)     
        local ts_utils = require('nvim-lsp-ts-utils')

        config.on_attach()

        -- defaults
        ts_utils.setup({
            debug = false,
            disable_commands = false,
            enable_import_on_completion = false,

            -- import all
            import_all_timeout = 5000, -- ms
            -- lower numbers = higher priority
            import_all_priorities = {
                same_file = 1, -- add to existing import statement
                local_files = 2, -- git files or files with relative path markers
                buffer_content = 3, -- loaded buffer content
                buffers = 4, -- loaded buffer names
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,

            -- filter diagnostics
            filter_out_diagnostics_by_severity = {},
            filter_out_diagnostics_by_code = {},

            -- inlay hints
            auto_inlay_hints = true,
            inlay_hints_highlight = "Comment",

            -- update imports on file move
            update_imports_on_move = false,
            require_confirmation_on_move = false,
            watch_dir = nil,
        })

        ts_utils.setup_client(client)

        local opts = { silent = true }
        u.buf_map(bufnr, 'n', 'gO', ':TSLspOrganize<CR>', opts)
        u.buf_map(bufnr, 'n', 'gR', ':TSLspRenameFile<CR>', opts)
        u.buf_map(bufnr, 'n', 'gI', ':TSLspImportAll<CR>', opts)
    end,
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = config.capabilities,
}
