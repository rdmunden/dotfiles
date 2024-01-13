return {
  {
    -- 1.) This is the one that actual does the lsp stuff
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    -- 2.) This is what you use to install and manage the language servers
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        -- To install new ones use the :Mason interface
        ensure_installed = { "lua_ls", "tsserver" }
      })
    end
  },
  {
    -- 3.) This is the one that connects nvim to the lang server
    'neovim/nvim-lspconfig',
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      --lspconfig.jedi_language_server({})
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
