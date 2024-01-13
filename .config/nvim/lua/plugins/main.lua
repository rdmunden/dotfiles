return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      -- don't know where i got this
      -- there's no "defaults" key in the documentation
      -- ok, i see it's just a table i defined and then used later as opts.defaults in "wk.register"
      -- but still it doesn't look like this is doing anything
      -- and it doesn't look like this syntax is correct
      -- it's supposed to be: wk.register(mappings, opts), "mode" is supposed to be a part of opts
      -- this is not setting any keybindings, all it's doing is setting "name" ke
      defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["gs"] = { name = "+surround" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader><tab>"] = { name = "+tabs" },
        ["<leader>b"] = { name = "+buffer" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>q"] = { name = "+quit/session" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>u"] = { name = "+ui" },
        ["<leader>w"] = { name = "+windows" },
        ["<leader>x"] = { name = "+diagnostics/quickfix" },
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
  },
}
