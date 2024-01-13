
--[[ keys.lua ]]--

--vim defines no default mapleader or maplocalleader key
vim.g.mapleader = ","
--used for a specific file type:
--vim.g.maplocalleader = "\\"   -- this makes a single "\" be the local leader key
--vim.g.maplocalleader = "<Bslash>"   -- not sure if this works
vim.g.maplocalleader = "_"

vim.keymap.set("n", "<Leader>d", "<C-d>")
vim.keymap.set("n", "<Leader>e", "<C-u>")
vim.keymap.set("n", "<Leader>j", "<C-e>j")  -- Scroll content up a line, cursor stays
vim.keymap.set("n", "<Leader>k", "<C-y>k")  -- Scroll content down a line, cursor stays

-------------------------------
-- keys
--
vim.keymap.set("n", "<Space>", "<C-f>")
vim.keymap.set("n", "<S-Space>", "<C-b>")
vim.keymap.set("n", "<C-Space>", "<C-w>w")
--vim.keymap.set("n", "<C-S-Space>", "<C-w>W")
vim.keymap.set("n", "<C-S-Space>", "<C-w><C-p>")

vim.keymap.set("n", "<M-Up>", "<C-e>")      -- opt+Up       Scroll line up, "grab" line + scroll content
vim.keymap.set("n", "<M-Down>", "<C-y>")    -- opt+Down     Scroll line down

--vim.keymap.set("", "∆", "ddp")
vim.keymap.set("", "<Char-0x2206>", "ddp")        -- Opt+j    Move line down
--vim.keymap.set("", "˚", "ddkP")
vim.keymap.set("", "<Char-0x02da>", "ddkP")       -- Opt+k    Move line up
--vim.keymap.set("v", "∆", "dpV`]")
vim.keymap.set("v", "<Char-0x2206>", "dpV`]")     -- Opt+j    Move selected block down
--vim.keymap.set("v", "˚", "dkPV`]")
vim.keymap.set("v", "<Char-0x02da>", "dkPV`]")    -- Opt+k    Move selected block up

vim.keymap.set("", "<C-_>", "<C-w>_")
vim.keymap.set("n", "Q", "ZZ")

