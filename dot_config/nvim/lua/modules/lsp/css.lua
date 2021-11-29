local config = require("modules.lsp.config")

require('lspconfig').cssls.setup{
    on_attach = config.on_attach,
    capabilities = config.capabilities,
}
