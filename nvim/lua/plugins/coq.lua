return {
	"neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
	lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
	dependencies = {
		-- main one
		{ "ms-jpq/coq_nvim", branch = "coq" },

		-- 9000+ Snippets
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },

		-- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
		-- Need to **configure separately**
		{
			"ms-jpq/coq.thirdparty",
			branch = "3p",
			--[[config = function()
				require("coq_3p")({
					{ src = "builtin/ada" },
					{ src = "builtin/c" },
					{ src = "builtin/clojure" },
					{ src = "builtin/css" },
					{ src = "builtin/haskell" },
					{ src = "builtin/html" },
					{ src = "builtin/js" },
					{ src = "builtin/php" },
					{ src = "builtin/syntax" },
					{ src = "builtin/xml" },
				})
			end,]]
		},
		-- - shell repl
		-- - nvim lua api
		-- - scientific calculator
		-- - comment banner
		-- - etc
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = true, -- if you want to start COQ at startup
			-- Your COQ settings here
			display = {
				statusline = {
					helo = false,
				},
			},
			keymap = {
				recommended = true,
			},
		}
	end,
	config = function()
		-- Your LSP settings here
	end,
}
