return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.tabline').setup()
      require('mini.bufremove').setup()
    end,
  },
}
