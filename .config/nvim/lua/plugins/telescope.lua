local function filenameFirst(_, path)
    local tail = vim.fs.basename(path)
    local parent = vim.fs.dirname(path)
    if parent == "." then return tail end
    return string.format("%s\t\t%s", tail, parent)
end

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = 'move_selection_previous',
                ['<C-j>'] = 'move_selection_next'
            }
        },
        file_ignore_patterns = { '.git/*', 'vendor/*', 'node_modules/*' }
    },
    layout_config = {
        promp_position = 'top'
    },
    filesorter = require('telescope.sorters').get_fzy_sorter,
    color_devicons = true,
    sorting_strategy  = 'ascending',
    file_previewer    = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer    = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer  = require('telescope.previewers').vim_buffer_qflist.new,
    pickers = {
        find_files = {
            hidden = true,
            path_display = filenameFirst
        }
    },
    vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--hidden',
        '--no-ignore-vcs'
    },
    extensions = {
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = 'smart_case',
        },
        ['ui-select'] = {
            require('telescope.themes').get_dropdown {}
        }
    }
}

require('telescope').load_extension('ui-select')
