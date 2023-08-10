-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "mbbill/undotree",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "[U]ndo [T]ree" })
    end
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require("custom.plugins.configs.null-ls")
    end
  },
  {

    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  -- {
  --   "Mofiqul/vscode.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- For dark theme (neovim's default)
  --     vim.o.background = 'dark'
  --     -- For light theme
  --     -- vim.o.background = 'light'
  --
  --     local c = require('vscode.colors').get_colors()
  --     require('vscode').setup({
  --       -- Alternatively set style in setup
  --       -- style = 'light'
  --
  --       -- Enable transparent background
  --       transparent = true,
  --
  --       -- Enable italic comment
  --       italic_comments = true,
  --
  --       -- Disable nvim-tree background color
  --       disable_nvimtree_bg = true,
  --
  --       -- Override colors (see ./lua/vscode/colors.lua)
  --       color_overrides = {
  --         vscLineNumber = '#FFFFFF',
  --       },
  --
  --       -- Override highlight groups (see ./lua/vscode/theme.lua)
  --       group_overrides = {
  --         -- this supports the same val table as vim.api.nvim_set_hl
  --         -- use colors from this colorscheme by requiring vscode.colors!
  --         Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
  --       }
  --     })
  --     require('vscode').load()
  --   end
  -- }
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false,  -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require('github-theme').setup({
  --       -- ...
  --     })
  --
  --     vim.cmd('colorscheme github_light')
  --   end
  -- }
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd[[colorscheme tokyonight]]
  --   end
  -- }

  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      -- Load the colorscheme
      require('nord').set()
    end
  },
}
