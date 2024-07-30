return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"asm_lsp",
					"bashls",
					"clangd",
					-- "cssls",
					-- "html",
					-- "texlab",
					-- "markdown_oxide",
					"lua_ls",
					"basedpyright",
					-- "rust_analyzer"
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilites

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.asm_lsp.setup({ capabilities = capabilities })
			lspconfig.basedpyright.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })

			vim.keymap.set("n", "<leader>M", ":Mason<CR>", {})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
