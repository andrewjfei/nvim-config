-------------------- options --------------------

local opt = vim.opt

-- line numbers
opt.number = true         -- show file line numbers
opt.relativenumber = true -- show line numbers relative to current line

-- tabs & indentation
opt.tabstop = 4       -- amount of spaces for tabs
opt.shiftwidth = 4    -- amount of spaces for indentation
opt.expandtab = true  -- expand tabs to spaces
opt.autoindent = true -- copy current line indent when starting a new line

-- search
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- assume case sensitive if searching with mixed case

-- clipboard
vim.schedule(function()
    opt.clipboard = "unnamedplus" -- copy to system clipboard
end)

-- split windows
opt.splitright = true -- split vertical window to right
opt.splitbelow = true -- split horizontal window to bottom

-- lines
opt.cursorline = true -- highlight current line cursor is on
opt.scrolloff = 10    -- minimum number of lines above and below

-- timings
opt.updatetime = 250 -- decrease update time
opt.timeoutlen = 300 -- decrease keymap sequence timeout

-- misc
opt.swapfile = false   -- disable swap files
opt.signcolumn = "yes" -- allows enable sign column to prevent text shift
opt.showmode = false   -- disable mode in since it is in status line

-------------------- keymaps --------------------

vim.g.mapleader = " "      -- global leader
vim.g.maplocalleader = " " -- local buffer leader

local keymap = vim.keymap

-- clear highlights
keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "[C]lear [H]highlights" })

-- window split
keymap.set("n", "<leader>wh", "<C-w>v", { desc = "[W]indow split [H]orizontally" })
keymap.set("n", "<leader>wv", "<C-w>s", { desc = "[W]indow split [V]eritically" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "[W]indow split [E]qual size" })

-- window tab
keymap.set("n", "<leader>wo", "<cmd>tabnew<CR>", { desc = "[W]indow [O]pen new tab" })
keymap.set("n", "<leader>wn", "<cmd>tabn<CR>", { desc = "[W]indow [N]ext tab" })
keymap.set("n", "<leader>wp", "<cmd>tabp<CR>", { desc = "[W]indow [P]revious tab" })
keymap.set("n", "<leader>wc", "<cmd>close<CR>", { desc = "[W]indow [C]lose" })

-- window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to right window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to top window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to bottom window" })

-- diagnostics
keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })
