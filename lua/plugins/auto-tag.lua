return {
	"windwp/nvim-ts-autotag",
	ft = { "html", "javascriptreact", "typescriptreact", "svelte", "vue", "tsx", "jsx", "rescript" },
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
