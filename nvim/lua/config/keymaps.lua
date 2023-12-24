-- setting local values
local keymap = vim.keymap
local opts = {
	noremap = true, 
	silent = true
}

-- nvim-tree
keymap.set("n", "tt", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)

-- Telescope 
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", opts)
