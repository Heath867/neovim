-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, tn = pcall(require, "tokyonight")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

tn.setup({
  style = "moon",
  dim_inactive = true,
  lualine_bold = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },
})

vim.cmd("colorscheme tokyonight-moon")
