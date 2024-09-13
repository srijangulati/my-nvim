local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f/", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Search by Grep" })

return { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
