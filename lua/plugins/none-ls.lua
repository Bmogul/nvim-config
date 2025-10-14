return {
	"nvimtools/none-ls.nvim",
  dependencies = {
  "nvimtools/none-ls-extras.nvim"},
	config = function()
		local none_ls = require("null-ls")
		none_ls.setup({
			sources = {
        require("none-ls.diagnostics.eslint_d"),
				none_ls.builtins.formatting.stylua,
				none_ls.builtins.formatting.prettier,
				none_ls.builtins.formatting.black,
				none_ls.builtins.formatting.isort,
				none_ls.builtins.formatting.clang_format.with({
					extra_args = {
						"--style={BasedOnStyle: LLVM, IndentWidth: 4, ColumnLimit: 100, BreakBeforeBraces: Linux, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, AlignConsecutiveMacros: true, AlignConsecutiveAssignments: true}",
					},
				}),
			},
			debug = false,
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
