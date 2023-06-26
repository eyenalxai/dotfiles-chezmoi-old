vim.g.mapleader = " "

-- Buffer navigation
vim.keymap.set("n", "<C-h>", "<C-W>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-W>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-W>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-W>l", { noremap = true, silent = true })

-- Code Actions
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- Smart Rename
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

-- References
vim.keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })

-- File Viewer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
