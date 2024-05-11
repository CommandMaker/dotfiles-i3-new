vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup {
    on_attach = function(bufnr)
        local api = require('nvim-tree.api')

        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.del('n', '<C-e>', { buffer = bufnr })
    end,
    sync_root_with_cwd = true,
    view = {
        width = 35,
        side = 'right',
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,

        }
    },
    renderer = {
        group_empty = false,
        indent_markers = {
            enable = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
    },
    filters = {
        dotfiles = true
    }
}

vim.api.nvim_set_keymap(
	"n",
	"<C-e>",
	"<cmd>lua require('nvim-tree.api').tree.toggle()<CR>",
	{ noremap = true, silent = true }
)
