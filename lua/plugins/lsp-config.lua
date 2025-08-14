return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"mfussenegger/nvim-jdtls",
		--config = function()
		--    local config = {
		--        cmd = {'/Users/archie/.local/share/nvim/mason/bin/jdtls'},
		--        root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
		--    }
		--    require('jdtls').start_or_attach(config)
		--end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		opts = {
			diagnostics = {
				virtual_text = true,
			},
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({ -- typescript (professional ewww)
				capabilities = capabilities,
			})
			-- lspconfig.solargraph.setup({ -- ruby (I don't even know how to code in ruby)
			--     capabilities = capabilities
			-- })
			lspconfig.html.setup({ -- ewww
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({ -- lua
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({ -- c/c++
				capabilities = capabilities,
			})
			-- lspconfig.rust_analyzer.setup({ -- rust
			--     capabilities = capabilities
			-- })
			lspconfig.bashls.setup({ -- bash
				capabilities = capabilities,
			})
			lspconfig.vimls.setup({ -- vim
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({ -- java
				capabilities = capabilities,
			})
			lspconfig.ocamllsp.setup({ -- ocaml
				capabilities = capabilities,
			})
			lspconfig.pylsp.setup({ -- python
				settings = {
					pylsp = {
						configurationSources = { "pycodestyle" }, -- Use pycodestyle for linting
						plugins = {
							pycodestyle = {
								ignore = { "E501", "W503" }, -- Disable line-too-long warning
								maxLineLength = 120, -- Allow longer lines
							},
							yapf = { enabled = false }, -- Optional: Disable yapf formatting
							autopep8 = { enabled = false }, -- Optional: Disable autopep8
						},
					},
				},
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, {})
			vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, {})
		end,
	},
}
