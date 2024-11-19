vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.cmd("set scrolloff=8")
vim.cmd("set smartindent")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hidden")
vim.g.mapleader = " "
vim.opt.cursorline = true -- Highlight current line

vim.opt.spell = true -- Enable spell check
vim.opt.spelllang = "en_us" -- Set the spell language
vim.opt.spellfile = vim.fn.expand("~/.config/nvim/spell/en.utf-8.add") -- Set the spell file

-- Keep cursor as a block in both normal and insert modes
vim.opt.guicursor = {
	"n-v-c:block", -- normal, visual, command mode: block cursor
	"i-ci-ve:block", -- insert and replace modes: block cursor
	"r-cr:hor20", -- replace mode: horizontal bar cursor with 20% height
	"o:hor50", -- operator-pending mode: horizontal bar cursor with 50% height
}

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true -- Show line numbers

-- for templ files
vim.filetype.add({ extension = { templ = "templ" } })

-- vim options
vim.opt.clipboard = "unnamedplus" -- to sync Neovim with system clipboard
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>p", "o<Esc>p")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
