return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
-- build = ":TSUpdate",

    config = function()
      -- require("nvim-treesitter.configs").setup({
      --   ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python" },
      --   sync_install = false,
      --   highlight = { enable = true },
      --   indent = { enable = true },
      --   })
      local config = require("nvim-treesitter.configs")
      config.setup({
        -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        })
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      --Old ones beneath here:
      --This one was found to conflict with :checkhealth which-key
      --vim.keymap.set("n", "<Leader>F", ":Telescope find_files<CR>")
      --vim.keymap.set("n", "<Leader>FG", ":Telescope live_grep<CR>")
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
              }
            }
          }
        })
      require("telescope").load_extension("ui-select")
    end
  }
}
