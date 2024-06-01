local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

augroup('BladeFiletypeRelated', { clear = true })
autocmd({ 'BufNewFile', 'BufRead' }, {
    group = 'BladeFiletypeRelated',
    pattern = '*.blade.php',
    callback = function ()
        vim.bo.filetype = 'blade'
    end
})
