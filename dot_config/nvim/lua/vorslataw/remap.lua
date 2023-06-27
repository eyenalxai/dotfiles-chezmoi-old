-- Leader is space
vim.g.mapleader = " "

-- Buffer navigation
vim.keymap.set("n", "<C-h>", "<C-W>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-W>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-W>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-W>l", { noremap = true, silent = true })

-- File Viewer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Code Actions
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- Smart Rename
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

-- Join visual selection lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Split visual selection lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join current line with next line
vim.keymap.set("n", "J", "mzJ`z")
-- Move down half a screen, keeping cursor in the same column
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Move up half a screen, keeping cursor in the same column
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Center screen after jumping to next match
vim.keymap.set("n", "n", "nzzzv")
-- Center screen after jumping to previous match
vim.keymap.set("n", "N", "Nzzzv")

-- Delete and paste in one go
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Copy current line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Use <C-c> to exit insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Q key
vim.keymap.set("n", "Q", "<nop>")
-- Open tmux sessionizer in a new window
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format code using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate quickfix list and center screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate location list and center screen
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace word under cursor, case-insensitive
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Open Packer configuration file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- Reload configuration file
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
