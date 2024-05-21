require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = 'move_selection_previous',
                ['<C-j>'] = 'move_selection_next'
            }
        }
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
    vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case'
    },
    extensions = {
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    }
}
