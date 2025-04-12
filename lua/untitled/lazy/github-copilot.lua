return {
	"github/copilot.vim",
	event = "InsertEnter", -- optional, lazy-load when entering insert mode
	config = function()
		-- Optional custom configuration can go here.

		-- For copilot.vim, most of the config is handled via Vim commands.
		vim.g.copilot_no_tab_map = true -- disable default tab mapping
		vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })
	end,
}
