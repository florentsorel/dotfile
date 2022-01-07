local config = require("modules.lsp.config")

require('lspconfig').gopls.setup{
    on_attach = function(client)
        config.on_attach()

        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
    capabilities = config.capabilities,
}

