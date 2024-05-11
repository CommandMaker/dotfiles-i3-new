local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'clangd', 'lua_ls', 'pylsp', 'cmake', 'dockerls' }

lspconfig.cmake.setup {}

for _, server in ipairs(servers) do
    lspconfig[server].setup {
        capabilities = capabilities
    }
end
