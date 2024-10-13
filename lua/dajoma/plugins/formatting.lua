return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local conform = require("conform")
    local notify = require("notify")

    local function show_notification(message, level)
      notify(message, level, {
        title = "conform.nvim",
      })
    end

    local has_yarn = vim.fn.executable("yarn") == 1

    local prettier_command = has_yarn and "yarn prettier" or "prettier"

    conform.setup({
      log_level = vim.log.levels.DEBUG,
      formatters = {
        {
          name = "prettier",
          command = prettier_command .. " --stdin-filepath" .. vim.api.nvim_buf_get_name(0),
          filetypes = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
          },
        },
      },
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "mdformat" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        groovy = { "npm-groovy-lint" },
      },
      format_on_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })

    vim.api.nvim_create_user_command("FormatToggle", function(args)
      local is_global = not args.bang
      if is_global then
        vim.g.disable_autoformat = not vim.g.disable_autoformat
        if vim.g.disable_autoformat then
          show_notification("Autoformat-on-save disabled globally", "info")
        else
          show_notification("Autoformat-on-save enabled globally", "info")
        end
      else
        vim.b.disable_autoformat = not vim.b.disable_autoformat
        if vim.b.disable_autoformat then
          show_notification("Autoformat-on-save disabled for this buffer", "info")
        else
          show_notification("Autoformat-on-save enabled for this buffer", "info")
        end
      end
    end, {
      desc = "Toggle autoformat-on-save",
      bang = true,
    })
  end,
}
