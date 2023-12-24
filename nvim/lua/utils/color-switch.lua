local finders = require "telescope.finders" 
local pickers = require "telescope.pickers" 
local sorters = require "telescope.sorters" 

local opts = {
  finder = finders.new_table { "nightfly", "kangawa", "one dark", "catppucchin", "rose pine" },  
}

local colors = pickers.new(opts)

colors:find()
