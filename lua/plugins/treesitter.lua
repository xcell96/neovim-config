return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			-- auto_install = true,
			ensure_installed = { "asm", "bash", "c", "cpp", "css", "html", "javascript", "lua", "python" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
