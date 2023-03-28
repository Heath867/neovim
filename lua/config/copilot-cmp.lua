-- import copilot-cmp plugin safely
local setup, copilot_cmp = pcall(require, "copilot_cmp")
if not setup then
	return
end
copilot_cmp.setup({})
