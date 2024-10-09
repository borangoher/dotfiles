-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Disable arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })

-- No swap file
vim.opt.swapfile = false

-- Save undo history in files
vim.opt.undofile = true

-- Number of undo saved
vim.opt.undolevels = 10000
vim.opt.undoreload = 10000

-- Relative line numbers
vim.opt.relativenumber = true

-- Use 2 spaces instead of tab
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Show substitution incrementally
vim.opt.inccommand = "nosplit"

-- Enable hidden buffers
vim.opt.hidden = true

-- Space as leader key
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true })

-- Remaps
vim.api.nvim_set_keymap('n', '<leader>bn', ':bn<CR>', { noremap = true, silent = true })  -- buffer next
vim.api.nvim_set_keymap('n', '<leader>tn', 'gt', { noremap = true, silent = true })       -- new tab
vim.api.nvim_set_keymap('n', '<C-w>h', '<C-w>s', { noremap = true, silent = true })       -- split window horizontally

-- FZF configuration
vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', { noremap = true, silent = true })

-- No backup files
vim.opt.backup = false
vim.opt.writebackup = false

-- More space for displaying messages
vim.opt.cmdheight = 2

-- Stable update time
vim.opt.updatetime = 300

-- Don't pass messages to ins-completion-menu
vim.opt.shortmess:append("c")

-- Always show the signcolumn
vim.opt.signcolumn = "number"
