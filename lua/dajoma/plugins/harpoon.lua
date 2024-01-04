return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    -- mark a file for harpoon
    keymap.set("n", "<leader>hx", function()
      require("harpoon.mark").add_file()
    end, { desc = "Mark file with harpoon" })

    -- goto next harpoon file
    keymap.set("n", "<leader>hn", function()
      require("harpoon.ui").nav_next()
    end, { desc = "Go to next harpoon mark" })

    -- goto previous harpoon file
    keymap.set("n", "<leader>hp", function()
      require("harpoon.ui").nav_prev()
    end, { desc = "Go to previous harpoon mark" })

    -- display all marked filed
    keymap.set("n", "<leader>hm", "<cmd>Telescope harpoon marks<cr>", { desc = "Show marked harpoon files" })

    -- remove marked harpoon file
    keymap.set("n", "<leader>hd", function()
      require("harpoon.mark").toggle_file()
    end, { desc = "Toggle harpoon mark on current file" })
  end,
}
