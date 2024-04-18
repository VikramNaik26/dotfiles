vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.background = "transparent"
vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

vim.opt.relativenumber = true
vim.wo.number = true
-- vim.api.nvim_set_keymap("v", "<leader>c", ':lua require("comment").comment()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":wa<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wqa", ":wqa<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", ":wincmd h<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>j", ":wincmd j<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", ":wincmd k<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", ":wincmd l<CR>", { noremap = true, silent = true })

-- Key mappings for moving lines up and down
vim.api.nvim_set_keymap("v", "J", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "K", ":m .-2<CR>==", { noremap = true, silent = true })

-- tabline customization
vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
vim.cmd("highlight! HarpoonActive guibg=NONE guifg=white")
vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7")
vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7")
vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")
