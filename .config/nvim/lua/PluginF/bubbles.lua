-- local colors = {
--   blue   = '#80a0ff',
--   cyan   = '#79dac8',
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   violet = '#d183e8',
--   grey   = '#303030',
-- }
-- local bubbles_theme = {
--   normal = {
--     a = { fg = colors.black, bg = colors.violet },
--     b = { fg = colors.white, bg = colors.grey },
--     c = { fg = colors.white },
--   },
--
--   insert = { a = { fg = colors.black, bg = colors.blue } },
--   visual = { a = { fg = colors.black, bg = colors.cyan } },
--   replace = { a = { fg = colors.black, bg = colors.red } },
--
--   inactive = {
--     a = { fg = colors.white, bg = colors.black },
--     b = { fg = colors.white, bg = colors.black },
--     c = { fg = colors.white },
--   },
-- }

-- require('PluginF.space_duck')
-- require('PluginF.purplecalm_lualine')
local function user_icon()
  -- return "󰑱"
  return "\u{f0471}"
end
require('lualine').setup {
  options = {
    -- theme = bubbles_theme,
    -- theme = spaceduck,
    theme = require('PluginF.purplecalm_dark'),
    --theme = purplecalm,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { user_icon, separator = { left = '', right = '' } } },
    -- lualine_a = {user_icon},
    lualine_b = { 'filename', 'branch' },
    -- lualine_b = {'mode'},
    lualine_c = {
      '%=', --[[ add your center compoentnts here in place of this comment ]]
      -- 'filename', 'branch'
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { left = '', right = '' } },
    },
  },
  inactive_sections = {
    lualine_a = { user_icon, 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
