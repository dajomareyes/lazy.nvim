return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggle = require("toggleterm")

    toggle.setup({
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.6
        end
      end,
      direction = "vertical",
      winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
          return term.name
        end,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<C-Bslash>", "<cmd>ToggleTerm<cr>", { desc = "Toggle in session terminal" })
  end,
}
