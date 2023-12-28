-- MOst commands start with the Space Key:
vim.g.mapleader = " "
-- Go back File Explorer in current directory:
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move Selection Down/Up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move line below to end of current line
vim.keymap.set("n", "J", "mzJ`z")
-- Move Down/Up a page:
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Overwrite search navigation:
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over selection without overwriting paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Delete without overwriting paste buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Copy whole line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Quick format:
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- change every occurance:
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Put marked section inside round brackets ( )
vim.keymap.set("v", "<leader>(", "s()<Esc>P")
-- Put marked section inside square brackets [ ]
vim.keymap.set("v", "<leader>[", "s[]<Esc>P")
-- Put marked section inside curly brackets { }
vim.keymap.set("v", "<leader>{", "s{}<Esc>P")

-- Search for word under cursor. Like # but top-bottom order
vim.keymap.set("n", "<leader>/", [[/\<<C-r><C-w>\><CR>]])
