local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'clangd', 'lua_ls', 'pylsp', 'cmake', 'dockerls', 'docker_compose_language_service', 'emmet_ls', 'tailwindcss', 'volar' }

-- TypeScript requires some extra config
lspconfig.tsserver.setup {
    init_options = {
        plugins = {
            {
                name = '@vue/typescript-plugin',
                location = '/home/command_maker/.local/share/pnpm/global/5/node_modules/@vue/typescript-plugin',
                languages = {'javascript', 'typescript', 'vue'},
            },
        },
    }
}

for _, server in ipairs(servers) do
    lspconfig[server].setup {
        capabilities = capabilities
    }
end
