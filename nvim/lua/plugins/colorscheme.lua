local Config = function()
  return {
    require("solarized-osaka").setup({
      transparent = true
    }),

    vim.cmd[[colorscheme solarized-osaka]]
  }
end

return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  config = Config
}
