return {
	"nvimtools/none-ls.nvim",
	config = function()
		local none_ls = require("null-ls")
		none_ls.setup({
			debug = true,
			sources = {
				none_ls.builtins.formatting.pint,
			}
		})
	end
}
