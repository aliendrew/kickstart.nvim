return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons", "xiyaowong/transparent.nvim" },
  config = function ()
    require('bufferline').setup({
      options = {
        --mode = "tabs",
        separator_style = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = true,
        color_icons = true
      },
      highlights = {
        separator = {
          fg = '#073642',
          bg = '#002b36',
        },
        separator_selected = {
          fg = '#073642',
        },
        background = {
          fg = '#657b83',
          bg = '#002b36',
        },
        buffer_selected = {
          fg = '#fdf6e3',
          undercurl = true,
        },
        fill = {
          bg = '#073642',
        },
      },
    })
    vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(function(v)
        return v.hl_group
      end, vim.tbl_values(require('bufferline.config').highlights))
    )
  end,
}
