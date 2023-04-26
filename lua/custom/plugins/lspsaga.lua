return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    {"nvim-tree/nvim-web-devicons"},
    --Please make sure you install markdown and markdown_inline parser
    {"nvim-treesitter/nvim-treesitter"},
  },
  config = function ()
    local saga = require('lspsaga')
    saga.setup({
      server_filetype_map = {typescript = 'typescript'}
    })
  end,
}
