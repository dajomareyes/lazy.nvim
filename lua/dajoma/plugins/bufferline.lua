return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slope",
      indicator = {
        style = "underline",
      },
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      close_icon = "",
      themable = true,
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true, -- use a "true" to enable the default, or set your own character
        },
      },
    },
  },
}
