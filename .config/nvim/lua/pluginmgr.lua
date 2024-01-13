--[[pluginmgr.lua]]--

-- setup package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = "," -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "_"

opts = {
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    --(this is the default: false)
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    --(default: nil)
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  --install = { colorscheme = { "tokyonight" } },
  --checker = { enabled = true }, -- automatically check for plugin updates --default: false
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}

require("lazy").setup("plugins", opts)

--[[ old config file ]]--
-- lazy.nvim
vim.keymap.set("n", "<Leader>L", ":Lazy<CR>")

-- nvim-tree
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

--old stuff, not using Nvimtree now
--vim.keymap.set("n", "<Leader>f", ":NvimTreeOpen<CR>")
--vim.keymap.set("n", "<Leader>f", ":NvimTreeToggle<CR>")

-- telescope.nvim

-- NeoTree
