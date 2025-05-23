-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set explicit Python 3 host to avoid detection delay
vim.g.python3_host_prog = "/usr/bin/python3"

-- require lazy package manager
require("lazy").setup({
	spec = "untitled.lazy",
	checker = { enabled = true },
	change_detection = { notify = false },
})

-- require ibl set up for indent-blankline plugin
require("ibl").setup({
	indent = {
		char = "│", -- You can change this to "┊", "¦", or whatever you like
	},
	scope = {
		enabled = false, -- disable indent scope highlighting
	},
})
