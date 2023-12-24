local prefix = "<leader>x"

return {
  "folke/trouble.nvim", 
  cmd = { "TroubleToggle", "Trouble" }, 

  keys = {
    { prefix, desc = "Trouble" }, 
    { prefix .. "X", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "workspace diagnostics" }, 
    { prefix .. "x", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "document diagnostics" }, 
    { prefix .. "q", "<cmd>TroubleToggle quickfix<CR>", desc = "quickfix list Trouble" }, 
  }, 

  opts = {
    use_diagnostic_signs = true, 
    action_keys = {
      close = { "q", "<esc>" }, 
      cancel = "<c-e>", 
    }, 
  }, 
}
