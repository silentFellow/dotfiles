return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function(_, opts)
		local logo = [[
            _ _            _   ______   _ _               
          (_) |          | | |  ____| | | |              
        ___ _| | ___ _ __ | |_| |__ ___| | | _____      __
      / __| | |/ _ \ '_ \| __|  __/ _ \ | |/ _ \ \ /\ / /
      \__ \ | |  __/ | | | |_| | |  __/ | | (_) \ V  V / 
      |___/_|_|\___|_| |_|\__|_|  \___|_|_|\___/ \_/\_/  

    ]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"
		opts.config.header = vim.split(logo, "\n")
	end,
}
