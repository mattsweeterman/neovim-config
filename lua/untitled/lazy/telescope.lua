
return {

    "nvim-telescope/telescope.nvim", 

    tag = "0.1.8",
      
    dependencies = { 
        "nvim-lua/plenary.nvim" 
	},

    config = function()
	require('telescope').setup({})

	    local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '"find files... fuzzily' })
            vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'find string in project' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
 	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	    vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "git integration?"})
    end
}
