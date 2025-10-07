-- ~/.config/nvim/colors/purplecalm-functional.lua
-- PurpleCalm-Functional colorscheme 🌙

local colors = {
  bg           = "#1E1B26",
  fg           = "#D7D3E0",
  black        = "#1E1B26",
  bright_black = "#2B2735",
  red          = "#E06C75",
  bright_red   = "#F97583",
  green        = "#98C379",
  bright_green = "#A8E19D",
  yellow       = "#E5C07B",
  bright_yellow= "#FFD68A",
  blue         = "#3378B5",
  bright_blue  = "#46A4F7",
  purple       = "#C19FF2",
  bright_purple= "#D6BAF7",
  cyan         = "#56B6C2",
  bright_cyan  = "#6BDDE0",
  white        = "#D7D3E0",
  bright_white = "#FFFFFF",
  cursor       = "#9B7EDE",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "purplecalm-functional"

-- Basic editor UI
vim.api.nvim_set_hl(0, "Normal",       { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = colors.bright_black })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bright_black })
vim.api.nvim_set_hl(0, "Cursor",       { bg = colors.cursor, fg = colors.bg })
vim.api.nvim_set_hl(0, "Visual",       { bg = "#2B2735" })
vim.api.nvim_set_hl(0, "LineNr",       { fg = "#555166" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = colors.fg, bg = colors.bright_black })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#5A556A", bg = colors.black })
vim.api.nvim_set_hl(0, "VertSplit",    { fg = "#3A3744" })
vim.api.nvim_set_hl(0, "SignColumn",   { bg = colors.bg })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = colors.fg, bg = "#2B2735" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = colors.bg, bg = colors.purple })
vim.api.nvim_set_hl(0, "Search",       { fg = colors.bg, bg = colors.yellow })
vim.api.nvim_set_hl(0, "IncSearch",    { fg = colors.bg, bg = colors.bright_yellow })

-- Syntax groups
vim.api.nvim_set_hl(0, "Comment",      { fg = "#66627A", italic = true })
vim.api.nvim_set_hl(0, "Constant",     { fg = colors.purple })
vim.api.nvim_set_hl(0, "String",       { fg = colors.green })
vim.api.nvim_set_hl(0, "Character",    { fg = colors.green })
vim.api.nvim_set_hl(0, "Number",       { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Boolean",      { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Float",        { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Identifier",   { fg = colors.blue })
vim.api.nvim_set_hl(0, "Function",     { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "Statement",    { fg = colors.purple })
vim.api.nvim_set_hl(0, "Conditional",  { fg = colors.bright_purple })
vim.api.nvim_set_hl(0, "Repeat",       { fg = colors.bright_purple })
vim.api.nvim_set_hl(0, "Label",        { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Operator",     { fg = colors.fg })
vim.api.nvim_set_hl(0, "Keyword",      { fg = colors.bright_purple })
vim.api.nvim_set_hl(0, "Exception",    { fg = colors.red })
vim.api.nvim_set_hl(0, "PreProc",      { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Include",      { fg = colors.purple })
vim.api.nvim_set_hl(0, "Define",       { fg = colors.purple })
vim.api.nvim_set_hl(0, "Macro",        { fg = colors.purple })
vim.api.nvim_set_hl(0, "Type",         { fg = colors.bright_cyan })
vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Structure",    { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Typedef",      { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Special",      { fg = colors.yellow })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#77738A" })
vim.api.nvim_set_hl(0, "Error",        { fg = colors.bright_white, bg = colors.red })
vim.api.nvim_set_hl(0, "Todo",         { fg = colors.bg, bg = colors.yellow })

