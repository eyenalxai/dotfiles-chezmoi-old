local null_ls = require("null-ls")

null_ls.setup({
    sources = {
	-- Lua
        null_ls.builtins.formatting.stylua,
	-- TypeScript, JavaScript
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.eslint_d,
	-- Python
	null_ls.builtins.formatting.black,
	null_ls.builtins.diagnostics.ruff,
	null_ls.builtins.diagnostics.mypy
    },
})

