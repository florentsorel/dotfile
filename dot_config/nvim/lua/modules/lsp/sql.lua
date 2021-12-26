local config = require("modules.lsp.config")

require('lspconfig').sqls.setup{
    on_attach = function(client)
        config.on_attach()
        
        client.resolved_capabilities.execute_command = true
        client.commands = require('sqls').commands

        require('sqls').setup{
            picker = 'telescope',
        }
    end
}

