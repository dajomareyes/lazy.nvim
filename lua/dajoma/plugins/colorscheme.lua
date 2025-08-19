return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        term_colors = true,
        transparent_background = false,
        styles = {
          comments = {},
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
        },
        color_overrides = {
          mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
          },
        },
        integrations = {
          telescope = {
            enabled = true,
            style = "nvchad",
          },
          dropbar = {
            enabled = true,
            color_mode = true,
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   -- priority = 1000,
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "main", -- auto, main, moon, or dawn
  --       dark_variant = "main", -- main, moon, or dawn
  --       dim_inactive_windows = false,
  --       -- disable_background = true,
  --       -- 	disable_nc_background = false,
  --       -- 	disable_float_background = false,
  --       -- extend_background_behind_borders = false,
  --       styles = {
  --         bold = true,
  --         italic = false,
  --         transparency = true,
  --       },
  --       highlight_groups = {
  --         ColorColumn = { bg = "#1C1C21" },
  --         Normal = { bg = "none" }, -- Main background remains transparent
  --         Pmenu = { bg = "", fg = "#e0def4" }, -- Completion menu background
  --         PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" }, -- Highlighted completion item
  --         PmenuSbar = { bg = "#191724" }, -- Scrollbar background
  --         PmenuThumb = { bg = "#9ccfd8" }, -- Scrollbar thumb
  --       },
  --       enable = {
  --         terminal = false,
  --         legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
  --         migrations = true, -- Handle deprecated options automatically
  --       },
  --     })
  --
  --     -- HACK: set this on the color you want to be persistent
  --     -- when quit and reopening nvim
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme kanagawa-dragon]])
  --   end,
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   transparent = false, -- set this to be able to ignore the default background with the theme
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme solarized-osaka]])
  --   end,
  -- },
  -- {
  --   "p00f/alabaster.nvim",
  --   name = "alabaster",
  --   priority = 1000,
  --   transparent = false, -- set this to be able to ignore the default background with the theme
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme alabaster]])
  --   end,
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   transparent = false, -- set this to be able to ignore the default background with the theme
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme catppuccin]])
  --   end,
  -- },
  -- {
  --   "xero/miasma.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme miasma")
  --   end,
  -- },
  -- {
  --   "ayu-theme/ayu-vim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme ayu")
  --   end,
  -- },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   name = "gruvbox",
  --   priority = 1000,
  --   transparent = false, -- set this to be able to ignore the default background with the theme
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme gruvbox]])
  --   end,
  -- },
  -- {
  --   "olivercederborg/poimandres.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme poimandres]])
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme github_dark_high_contrast]])
  --   end,
  -- },
  -- {
  --   "joshdick/onedark.vim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme onedark]])
  --   end,
  -- },
  -- {
  --   "savq/melange-nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme melange]])
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   transparent = true,
  --   config = function()
  --     local bg = "#011628"
  --     local bg_dark = "#011423"
  --     local bg_highlight = "#143652"
  --     local bg_search = "#0A64AC"
  --     local bg_visual = "#275378"
  --     local fg = "#CBE0F0"
  --     local fg_dark = "#B4D0E9"
  --     local fg_gutter = "#627E97"
  --     local border = "#547998"
  --
  --     require("tokyonight").setup({
  --       style = "night",
  --       on_colors = function(colors)
  --         colors.bg = bg
  --         colors.bg_dark = bg_dark
  --         colors.bg_float = bg_dark
  --         colors.bg_highlight = bg_highlight
  --         colors.bg_popup = bg_dark
  --         colors.bg_search = bg_search
  --         colors.bg_sidebar = bg_dark
  --         colors.bg_statusline = bg_dark
  --         colors.bg_visual = bg_visual
  --         colors.border = border
  --         colors.fg = fg
  --         colors.fg_dark = fg_dark
  --         colors.fg_float = fg
  --         colors.fg_gutter = fg_gutter
  --         colors.fg_sidebar = fg_dark
  --       end,
  --     })
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },
}
