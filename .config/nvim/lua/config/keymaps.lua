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

-- Resize current splitright
keymap("n", "<M-=>", ":vert resize +10<CR>", silent)
keymap("n", "<M-+>", ":vert resize -10<CR>", silent)

-- LSP shortcuts
keymap("n", "<M-c>", "<cmd>lua vim.diagnostic.open_float()<CR>", silent)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", silent)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", silent)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", silent)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", silent)

-- File explorer
--keymap("n", "<C-e>", "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>", { silent = true, noremap = true })
