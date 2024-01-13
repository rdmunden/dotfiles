return {
    'nvim-tree/nvim-web-devicons',
    {
      'nvim-lualine/lualine.nvim',
      opts = {
        options = {
          icons_enabled = true,
          theme = 'auto',
          --theme = 'nightfly',
          --theme = 'tokyonight',
          --theme = 'dracula',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
    },
    -- {
    --   "nvim-tree/nvim-tree.lua",
    --   version = "*",
    --   lazy = false,
    --   dependencies = {
    --     "nvim-tree/nvim-web-devicons",
    --   },
    --   config = function()
    --     require("nvim-tree").setup {}
    --   end,
    -- },
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
      init = function()
        vim.keymap.set("n", "<C-n>", ":Neotree<CR>")
        vim.keymap.set("n", "<C-S-n>", ":Neotree toggle<CR>")
      end,
      config = function()
        require("neo-tree").setup({
          window = { width = 30 }
          })
      end
    },
}
