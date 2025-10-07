local purplecalm = {}

local colors = {
  black        = '#1E1B26',
  white        = '#D7D3E0',
  red          = '#E06C75',
  green        = '#A8E19D',
  blue         = '#3378B5',
  purple       = '#C19FF2',
  yellow       = '#E5C07B',
  cyan         = '#56B6C2',
  bright_black = '#2B2735',
  bright_white = '#FFFFFF'
}

purplecalm.normal = {
  a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
  b = {bg = colors.bright_black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

purplecalm.insert = {
  a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
  b = {bg = colors.bright_black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

purplecalm.visual = {
  a = {bg = colors.cyan, fg = colors.black, gui = 'bold'},
  b = {bg = colors.bright_black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

purplecalm.replace = {
  a = {bg = colors.red, fg = colors.black, gui = 'bold'},
  b = {bg = colors.bright_black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

purplecalm.command = {
  a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
  b = {bg = colors.bright_black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

purplecalm.inactive = {
  a = {bg = colors.black, fg = colors.white, gui = 'bold'},
  b = {bg = colors.black, fg = colors.white},
  c = {bg = colors.black, fg = colors.white}
}

return purplecalm

