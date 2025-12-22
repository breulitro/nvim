vim.o.showtabline = 2

--vim.o.wildmenu = true
--vim.o.wildmode = 'longest:full,full'

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.opt_local.expandtab = false -- não expande tabs em Python
    vim.opt_local.tabstop = 4 -- tab = 4 colunas
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua',
  callback = function()
    vim.opt_local.expandtab = false -- não expande tabs em Python
    vim.opt_local.tabstop = 2 -- tab = 4 colunas
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

vim.opt.expandtab = false
vim.opt.indentexpr = ''
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
