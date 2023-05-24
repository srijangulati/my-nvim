-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Terminal commands
vim.keymap.set("n", "<leader>t1", "<cmd>1ToggleTerm<cr>", {
  desc = "Toggle first terminals",
})
vim.keymap.set("n", "<leader>t2", "<cmd>2ToggleTerm<cr>", {
  desc = "Toggle second terminals",
})

-- move commands
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Move code in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- back to normal mode
vim.keymap.set("i", "jj", "<esc>")

--copy over SSH
vim.keymap.set("v", "<leader>cc", "<Plug>OSCYankVisual", { desc = "Copy over SSH" })

--open with split
vim.keymap.set("n", "<leader>gv", "<cmd>vert winc ]<cr>", { desc = "Open definition in vertical tab" })
vim.keymap.set("n", "<leader>gh", "<cmd>winc ]<cr>", { desc = "Open definition in horizontal tab" })

-- oil.lua
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
