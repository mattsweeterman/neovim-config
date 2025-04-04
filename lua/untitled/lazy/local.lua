local local_plugins = {
    {
	"dracula_pro",
	dir = "/Users/matthew.sweeterman/.local/share/nvim/site/pack/themes/start/dracula_pro",
	lazy = false,
	priority = 1000,
	config = function()
	    vim.cmd("colorscheme dracula_pro_van_helsing")
	end,
    },
}

return local_plugins
