return {
  "ggandor/leap.nvim", 
  lazy = false, 
  init = function()
    require('leap').add_default_mappings()
  end, 
  dependencies = {
    "tpope/vim-repeat"
  }
}
