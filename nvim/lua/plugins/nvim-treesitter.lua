local Config = function()
  require('nvim-treesitter').setup {
    ensure_installed = { 
      "javascript", 
      "typescript", 
      "java", 
      "python" , 
      "go" , 
      "c", 
      "vim", 
      "lua" 
    },

    sync_install = false,

    auto_install = true, 

    highlight = { 
      enable = true, 
      additional_vim_regex_highlighting = false,
    },
  }
end

return {
  "nvim-treesitter/nvim-treesitter", 
  lazy = false, 
  config = Config
}
