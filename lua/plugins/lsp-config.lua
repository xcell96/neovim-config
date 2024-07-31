return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {
					"clang-format",
					"codelldb",
				},
			})
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
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"p00f/clangd_extensions.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilites
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = function()
					require("clangd_extensions.inlay_hints").setup_autocmd()
					require("clangd_extensions.inlay_hints").set_inlay_hints()
				end,
			})
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
