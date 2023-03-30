local icons = {
	ui = require("dap.icons").get("ui"),
	dap = require("dap.icons").get("dap"),
}

require("dapui").setup({
	icons = { expanded = icons.ui.ArrowOpen, collapsed = icons.ui.ArrowClosed, current_frame = icons.ui.Indicator },
	mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
	},
	layouts = {
		{
			elements = {
				-- Provide as ID strings or tables with "id" and "size" keys
				{
					id = "scopes",
					size = 0.25, -- Can be float or integer > 1
				},
				{ id = "breakpoints", size = 0.25 },
				{ id = "stacks", size = 0.25 },
				{ id = "watches", size = 0.25 },
			},
			size = 40,
			position = "left",
		},
		{ elements = { "repl" }, size = 10, position = "bottom" },
	},
	-- Requires Nvim version >= 0.8
	controls = {
		enabled = true,
		-- Display controls in this session
		element = "repl",
		icons = {
			pause = icons.dap.Pause,
			play = icons.dap.Play,
			step_into = icons.dap.StepInto,
			step_over = icons.dap.StepOver,
			step_out = icons.dap.StepOut,
			step_back = icons.dap.StepBack,
			run_last = icons.dap.RunLast,
			terminate = icons.dap.Terminate,
		},
	},
	floating = {
		max_height = nil,
		max_width = nil,
		mappings = { close = { "q", "<Esc>" } },
	},
	windows = { indent = 1 },
})

require("nvim-dap-virtual-text").setup({
	enabled = true,
	enable_commands = true,
	highlight_changed_variables = true,
	highlight_new_as_changed = false,
	show_stop_reason = true,
	commented = false,
	only_first_definition = true,
	all_references = false,
	filter_references_pattern = "<module",
	virt_text_pos = "eol",
	all_frames = false,
	virt_lines = false,
	virt_text_win_col = nil,
})
