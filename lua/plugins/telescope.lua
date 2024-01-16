local telescope = require("telescope")

-- mappings

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", opts )
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>", opts )
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<CR>", opts )
vim.keymap.set("n", "<Leader>fh", ":Telescope help_tags<CR>", opts )
vim.keymap.set("n", "<Leader>@", ":Telescope treesitter<CR>", opts )
vim.keymap.set("n", "<Leader>e", ":Telescope file_browser<CR>", opts )
vim.keymap.set("n", "<Leader>ds", ":Telescope lsp_document_symbols<CR>", opts )
-- setup
telescope.setup {
  extensions = {
      fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
      }
  }
}

telescope.load_extension('fzy_native')

