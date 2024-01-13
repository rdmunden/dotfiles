return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme tokyonight]])
      -- vim.cmd.colorscheme "tokyonight"
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    init = function ()
    --  vim.cmd.colorscheme "catppuccin"
      vim.cmd.colorscheme('catppuccin')
    end
  }
}
