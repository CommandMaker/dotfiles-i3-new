-- Treesitter config

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'cpp', 'make', 'javascript', 'typescript', 'html', 'css', 'php', 'phpdoc' },
}
