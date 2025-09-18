return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5",
		ft = { "rust" },
		init = function()
			vim.g.rustaceanvim = {
				server = {
					on_attach = function(_, bufnr)
						local map = function(m, l, r)
							vim.keymap.set(m, l, r, { buffer = bufnr, silent = true })
						end
						-- TODO this might be duplicated with the lsp config
						map("n", "K", "<cmd>RustLsp hover actions<CR>")
						map("n", "gd", vim.lsp.buf.definition)
						map("n", "gr", vim.lsp.buf.references)
						map("n", "<leader>rn", vim.lsp.buf.rename)
						map("n", "<leader>ca", vim.lsp.buf.code_action)
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end,
					settings = {
						["rust-analyzer"] = {
							cargo = { allFeatures = true },
							check = { command = "clippy" }, -- or "clippy"
							procMacro = { enable = false },
						},
					},
				},
				tools = { hover_actions = { auto_focus = true } },
			}
		end,
	},
}
