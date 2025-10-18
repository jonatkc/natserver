-- Leader Key
vim.g.mapleader = " "
--vim.g.maplocalleader= ' '

-- Basic Config
vim.opt.backspace = "2"
vim.opt.mouse = "a"
vim.opt.autoread = true

--vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.showtabline = 2

-- "      File Handling     "
--vim.opt.nocompatible
vim.opt.wildmenu = true -- enable tab auto complete
--vim.opt.path:append '**'      -- Look into sub directories

-- Use space instead of tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.expandtab = false --tab to space
vim.opt.shiftround = true

-- Vim no swp (backup) & Long Undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Vim Scroll offset
vim.opt.scrolloff = 8

-- C compile
vim.keymap.set("n", "<leader>gcc", ":! gcc")

-- Remap Ctrl+hjkl in insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true })

-- terminal mode
-- vim.api.nvim_set_keymap("t", "<ESC>", "<C-/><C-n>", { noremap = true })

-- quick save
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- Fun Visual up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clear Search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Other Lex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- " Built in Vim file tree "
vim.keymap.set("n", "<leader>l", ":Lex<cr>:vertical resize 30<cr>")

-- " Moving through buffers "
vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Easy Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- markdown macros
vim.keymap.set("n", "<leader>8", [[viwdi**<ESC>hp]])
vim.keymap.set("v", "<leader>b", [[di****<ESC>hhp]])
vim.keymap.set("v", "<leader>bb", 's**<C-r>"<ESC>k$a**<ESC>') -- is a line
vim.keymap.set("v", "<leader>i", [[di**<ESC>hp]]) -- not a line
vim.keymap.set("v", "<leader>ii", [[di **<ESC>hhp]])

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- better command line mapping
vim.api.nvim_set_keymap("n", "<CR>", "<cmd>FineCmdline<CR>", { noremap = true })

-- sed commands
-- s/parttern/replacement/places
-- /^$/d  all empty lines
-- \s is for space
-- \. is for any character
-- \* is for any count
-- \.* any character and any count
