local options = {
    clipboard      = "unnamed,unnamedplus",   -- Copy-paste between vim and everything else 
    swapfile       = false,                   -- Disable the swaps files
    tabstop        = 4,                       -- Set tab to 4 spaces
    softtabstop    = 4,                       -- Set tab to 4 spaces
    shiftwidth     = 4,                       -- Set tab to 4 spaces
    expandtab      = true,                    -- Use spaces instead of tabs
    smartindent    = true,                    -- Enable smart indenting
    showtabline    = 2,                       -- Always show tabs
    number         = true,                    -- Show lines numbers
    relativenumber = true,                    -- Show relative lines numbers
    signcolumn     = "yes:1",                 -- Add an extra line column
    splitright     = true,                    -- Vertical split will be at right
    termguicolors  = true,                    -- Correct terminal colors
    undofile       = true,                    -- Set undo to file
    cursorline     = true,                    -- Highlight current line
    scrolloff      = 8,                       -- Keep space when scrolling
}

for i, j in pairs(options) do
    vim.opt[i] = j
end
