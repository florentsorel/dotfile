local config = require("modules.lsp.config")

require('lspconfig').html.setup{
    on_attach = config.on_attach,
    capabilities = config.capabilities,
}

