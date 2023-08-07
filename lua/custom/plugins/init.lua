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
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd[[colorscheme tokyonight]]
    end
  }
  -- {
  --   'shaunsingh/nord.nvim',
  --   config = function()
  --     vim.g.nord_contrast = true
  --     vim.g.nord_borders = false
  --     vim.g.nord_disable_background = false
  --     vim.g.nord_italic = false
  --     vim.g.nord_uniform_diff_background = true
  --     vim.g.nord_bold = false
  --
  --     -- Load the colorscheme
  --     require('nord').set()
  --   end
  -- },
}
