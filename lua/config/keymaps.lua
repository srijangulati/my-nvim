-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

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

-- copilot
vim.api.nvim_set_keymap("i", "<C-H>", "copilot#Accept()", { expr = true, silent = true })

-- Harpoon
vim.api.nvim_set_keymap(
  "n",
  "<leader>mm",
  "<cmd>:lua require('harpoon.mark').add_file()<cr>",
  { noremap = true, silent = true, desc = "Add file to harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>mo",
  "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>",
  { noremap = true, silent = true, desc = "Open harpoon menu" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>mh",
  "<cmd>:lua require('harpoon.ui').nav_prev()<cr>",
  { noremap = true, silent = true, desc = "Go to previous file in harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ml",
  "<cmd>:lua require('harpoon.ui').nav_next()<cr>",
  { noremap = true, silent = true, desc = "Go to next file in harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>m1",
  "<cmd>:lua require('harpoon.ui').nav_file(1)<cr>",
  { noremap = true, silent = true, desc = "Go to next file in harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>m2",
  "<cmd>:lua require('harpoon.ui').nav_file(2)<cr>",
  { noremap = true, silent = true, desc = "Go to next file in harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>m3",
  "<cmd>:lua require('harpoon.ui').nav_file(3)<cr>",
  { noremap = true, silent = true, desc = "Go to next file in harpoon" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>m4",
  "<cmd>:lua require('harpoon.ui').nav_file(4)<cr>",
  { noremap = true, silent = true, desc = "Go to next file in harpoon" }
)
