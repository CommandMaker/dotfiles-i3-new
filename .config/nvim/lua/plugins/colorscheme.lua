--local tokyonight = require('tokyonight')
--
--vim.cmd([[au fileType * hi Normal guibg=NONE ctermbg=NONE]])
--
--tokyonight.setup {
--    transparent = true,
--    transparent_sidebar = true,
--    style = 'night',
--    terminal_colors = true,
--    styles = {
--        sidebars = "transparent",
--        floats = "transparent",
--    }
--}


require('tokyodark').setup {
    transparent_background = true
}

vim.cmd[[colorscheme tokyodark]]
