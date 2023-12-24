return {
  "Wansmer/treesj", 
  keys = {
    {
      "<leader>s", 
      "<CMD>TSJToggle<CR>", 
      desc = "Toggle Treesitter join", 
    }
  }, 
  cmd = { 'TSJTogle', 'TSJSplit', 'TSJJoin' }, 
  opts = { use_default_keymaps = false }
}
