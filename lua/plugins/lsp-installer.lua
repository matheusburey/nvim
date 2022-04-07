local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local status, schemastore = pcall(require, "schemastore")
if not status then
	return
end

local config_lsp = {
	sumneko_opts = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						[vim.fn.expand "$VIMRUNTIME/lua"] = true,
						[vim.fn.stdpath "config" .. "/lua"] = true,
					},
				},
			},
		},
	},
	eslint_opts = {
		codeAction = {
			disableRuleComment = {
				enable = true,
				location = "separateLine"
			},
			showDocumentation = {
				enable = true
			}
		},
		codeActionOnSave = {
			enable = false,
			mode = "all"
		},
		format = true,
		nodePath = "",
		onIgnoredFiles = "off",
		packageManager = "npm",
		quiet = false,
		rulesCustomizations = {},
		run = "onType",
		useESLintClass = false,
		validate = "on",
		workingDirectory = {
			mode = "location"
		}
	},
	emmet_opts= {
		cmd = { "ls_emmet", "--stdio" },
		filetypes = {
			"html",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"haml",
			"xml",
			"xsl",
			"pug",
			"slim",
			"sass",
			"stylus",
			"less",
			"sss",
			"hbs",
			"handlebars",
		},
	},
	jsonls_opts = {
		init_options = {
			provideFormatter = false,
		},
		settings = {
			json = {
				schemas = schemastore.json.schemas(),
			},
		},
		setup = {
			commands = {
				Format = {
					function()
						vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
					end,
				},
			},
		},
	},
	pyright_opts = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true
			}
		}
	}
}

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("plugins.lspconfig").on_attach,
		capabilities = require("plugins.lspconfig").capabilities,
	}

	if server.name == "jsonls" then
		opts = vim.tbl_deep_extend("force", config_lsp.jsonls_opts, opts)
	end

	if server.name == "sumneko_lua" then
		opts = vim.tbl_deep_extend("force", config_lsp.sumneko_opts, opts)
	end

	if server.name == "pyright" then
		opts = vim.tbl_deep_extend("force", config_lsp.pyright_opts, opts)
	end

	if server.name == "emmet_ls" then
		opts = vim.tbl_deep_extend("force", config_lsp.emmet_opts, opts)
	end

	if server.name == "eslint" then
		opts = vim.tbl_deep_extend("force", config_lsp.eslint_opts, opts)
	end


	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
