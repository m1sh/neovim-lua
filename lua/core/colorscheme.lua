-- require('solarized').set()
vim.cmd[[colorscheme solarized]]
require('lualine').setup {
  options = {
    theme = 'solarized'
  }
}
