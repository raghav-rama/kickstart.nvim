-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    {
      '\\',
      function()
        local name = vim.api.nvim_buf_get_name(0)
        if name == '' or vim.bo.buftype ~= '' or name:match '^gitsigns://' then
          vim.cmd 'Neotree toggle'
        else
          vim.cmd 'Neotree reveal'
        end
      end,
      desc = 'NeoTree reveal',
      silent = true,
    },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
