return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gad", ":Git add .<CR>", {})
			vim.keymap.set("n", "<leader>gss", ":Git push<CR>", {})

			_G.git_commit_with_message = function()
				local commit_message = vim.fn.input("Commit message: ")
				vim.fn.execute(':Git commit -m "' .. commit_message .. '"')
			end

			vim.keymap.set("n", "<leader>gcm", ":lua git_commit_with_message()<CR>", {})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
		end,
	},
}
