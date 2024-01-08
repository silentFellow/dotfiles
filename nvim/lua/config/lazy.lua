local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	spec = {
		-- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				colorscheme = "solarized-osaka",
				news = {
					lazyvim = true,
					neovim = true,
				},
			},
		},

		-- imports
		{ import = "plugins" },
		{ import = "plugins.lsp" },
	},

	defaults = {
		lazy = true,
		version = false, -- whether want to install latest, if want use "*"
	},

	checker = { enable = true }, -- check for latest plugin updates

	performance = {
		cache = true,
		rip = {
			"gzip",
			"matchit",
			"matchparen",
			"netrwPlugin",
			"rplugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},

	ui = {
		custom_keys = {
			["<localleader>d"] = function(plugin)
				dd(plugin)
			end,
		},
	},

	debug = false,
}

require("lazy").setup(opts)
