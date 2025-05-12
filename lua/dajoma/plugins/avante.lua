return {
  "yetone/avante.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
  build = "make",
  opts = { provider = "copilot" },
  config = function(_, opts)
    local avante = require("avante")
    avante.setup(opts)

    local keymap = vim.keymap

    keymap.set("n", "<leader>ac", "<cmd>AvanteToggle<CR>", { desc = "Toggle Avante" })
    keymap.set("n", "<leader>as", "<cmd>AvanteSelectModel<CR>", { desc = "Select Avante model" })
    keymap.set("n", "<leader>ae", "<cmd>AvanteExplain<CR>", { desc = "Explain Avante" })
  end,
}
