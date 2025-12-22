-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
      require('mini.bufremove').setup()
    end,
  },

  -- **NOVO PLUGIN: Bufferline para exibir todos os buffers**
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons', -- Plugin para ícones bonitos
    config = function()
      require('bufferline').setup {
        options = {
          -- A Bufferline substituirá a Tabline padrão do Neovim
          mode = 'buffers', -- Garante que ele mostra buffers, não abas (tabpages)

          -- A linha será visível mesmo que só tenha 1 buffer
          --show_buffer_icons = false,
          indicator_icon = ' ',
          show_buffer_close_icons = false,
          show_close_icon = false,
          always_show_bufferline = true,
          show_buffer_path = true,

          -- Você pode adicionar mais configurações aqui para mudar o estilo
        },
        --[[ ADICIONE ESTE BLOCO 'HIGHLIGHTS'
		highlights = {
		  -- Ajusta o preenchimento lateral dos itens da bufferline (o espaçamento entre eles)
		  buffer_selected = {
			bold = true,
			padding = { 0, 0 },
		  },
		  buffer_visible = {
			padding = { 0, 0 },
			-- pad = 0 (REMOVE O ESPAÇO NOS BUFFERS INVISÍVEIS)
		  },
		  -- 'tab_size' controla o espaçamento entre o texto e o ícone/indicador
		  tab_size = {
			padding = { 0, 0 },
		  },
		},
	--]]
      }
    end,
  },
  {
    'github/copilot.vim',
  },
}
