local keymap = vim.keymap.set
local silent = { silent = true }

-- Don't yank on delete char
keymap("n", "x", '"_x', silent)
keymap("n", "X", '"_X', silent)
keymap("v", "x", '"_x', silent)
keymap("v", "X", '"_X', silent)

-- Don't yank on visual paste
keymap("v", "p", '"_dP', silent)

-- Keep visual mode indenting
keymap("v", "<", "<gv", silent)
keymap("v", ">", ">gv", silent)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Faster move through current line
keymap("i", "<M-*>", "<C-o>^", silent)
keymap("i", "<M-$>", "<C-o>$", silent)

-- HJKL movement in insert & command mode
keymap("i", "<C-h>", "<Left>", silent)
keymap("i", "<C-j>", "<Down>", silent)
keymap("i", "<C-k>", "<Up>", silent)
keymap("i", "<C-l>", "<Right>", silent)

keymap("c", "<C-h>", "<Left>", silent)
keymap("c", "<C-j>", "<Down>", silent)
keymap("c", "<C-k>", "<Up>", silent)
keymap("c", "<C-l>", "<Right>", silent)

-- Resize current splitright
keymap("n", "<M-=>", ":vert resize +10<CR>", silent)
keymap("n", "<M-S-+>", ":vert resize -10<CR>", silent)

-- LSP shortcuts
keymap("n", "<M-c>", "<cmd>lua vim.diagnostic.open_float()<CR>", silent)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", silent)
keymap("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", silent)
keymap("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", silent)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", silent)
keymap("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- Telescope
keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", silent)
keymap("n", "<C-g>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", silent)
keymap("n", "<C-s>", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", silent)

-- Buffer move
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", silent)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", silent)
keymap("n", "<S-q>", ":lua require('mini.bufremove').delete(0, false)<CR>", silent)
