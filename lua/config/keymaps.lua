-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("custom.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment" })
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h", { desc = "Move to the left window" })
keymap.set("n", "sk", "<C-w>k", { desc = "Move to the window above" })
keymap.set("n", "sj", "<C-w>j", { desc = "Move to the window below" })
keymap.set("n", "sl", "<C-w>l", { desc = "Move to the right window" })

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window to the left" })
keymap.set("n", "<C-w><right>", "<C-w>>", { desc = "Resize window to the right" })
keymap.set("n", "<C-w><up>", "<C-w>+", { desc = "Resize window upwards" })
keymap.set("n", "<C-w><down>", "<C-w>-", { desc = "Resize window downwards" })

-- Diagnositics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
keymap.set("n", ";l", ": lua vim.diagnostic.setqflist()", { desc = "Diagnositics list" })

keymap.set("n", ";n", ":Telescope notify", { desc = "Telescope Notify" })
keymap.set("n", ";c", ":checkhealth", { desc = "Check health" })

-- Cursor
keymap.set("n", ";a", "<ESC>^", { desc = "Move cursor to the start of the line" })
keymap.set("n", ";e", "<ESC>$", { desc = "Move cursor to the end of the line" })
