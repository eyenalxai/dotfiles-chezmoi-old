local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr }
	lsp.default_keymaps(opts)

	vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opts)
	vim.keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_incoming_calls<cr>", opts)
	vim.keymap.set("n", "<leader>go", "<cmd>Telescope lsp_outgoing_calls<cr>", opts)
	vim.keymap.set("n", "<leader>gs", "<cmd>Telescope lsp_document_symbols<cr>", opts)
	vim.keymap.set("n", "<leader>gS", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
	vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)
	vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_type_definitions<cr>", opts)
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		["rust_analyzer"] = { "rust" },
		["null-ls"] = { "typescript", "javascript", "python", "lua" },
	},
})

lsp.setup()
