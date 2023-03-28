-- import lspkind plugin safely
local setup, lspkind = pcall(require, "lspkind")
if not setup then
	return
end

lspkind.init({
	symbol_map = {
		Copilot = "",
	},
})

vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
