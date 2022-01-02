local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    formatting.prettier,
    formatting.trim_whitespace,
    formatting.phpcsfixer.with({
        args = { '--no-interaction', '--using-cache=no', '--quiet', '--rules=@PSR12,@Symfony', 'fix', '$FILENAME' },
    }),

    diagnostics.php,
}

null_ls.setup{
    sources = sources,
}
