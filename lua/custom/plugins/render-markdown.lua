return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'quarto' },
    cmd = 'RenderMarkdown',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      pipe_table = {
        wrap = true,
        preset = 'round',
        cell = 'trimmed',
        padding = 1,
        border_enabled = true,
      },
    },
  },
}
