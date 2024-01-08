local discipline = require("craftzdog.discipline")

discipline.cowboy()

-- setting local values
local keymap = vim.keymap

local opts = function(desc)
	return {
		noremap = true,
		silent = true,
		desc = desc or "no desc",
	}
end

-- increment/decrement
keymap.set("n", "+", "<C-a>", opts("increment"))
keymap.set("n", "-", "<C-x>", opts("decrement"))

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts("select all"))

-- nvim-tree
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", opts("tree toggle"))
keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", opts("tree focus"))

-- pane navigation
keymap.set("n", "<C-j>", "<C-w>j", opts("move down")) -- move down
keymap.set("n", "<C-k>", "<C-w>k", opts("move up")) -- move up
keymap.set("n", "<C-l>", "<C-w>l", opts("move right")) -- move right
keymap.set("n", "<C-h>", "<C-h>h", opts("move left")) -- move left

-- spliting pane
keymap.set("n", "|", ":vsplit<CR>", opts("vertical split"))
keymap.set("n", "-", ":split<CR>", opts("horizontal solit"))

-- new tab
keymap.set("n", "te", ":tabedit<CR>", opts("new tab"))

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts("find files"))
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts("find buffers"))
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts("live grep"))
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts("find keymaps"))
keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", opts("change colorscheme"))

-- Indenting
keymap.set("v", "<", "<gv", opts("indent right"))
keymap.set("v", ">", ">gv", opts("indent left"))

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gtc", opts())
vim.api.nvim_set_keymap("v", "<C-_>", "goc", opts())

-- Diagnostics
keymap.set("n", "<leader>dn", function()
	vim.diagnostic.goto_next()
end, opts("go to next disgnostic"))

keymap.set("n", "<leader>rhh", function()
	require("craftzdog.utils").replaceHexWithHSL()
end, opts("hex => hsl"))
