local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'clangd', 'lua_ls', 'pylsp', 'cmake', 'dockerls', 'docker_compose_language_service', 'emmet_ls', 'tailwindcss', 'volar', 'intelephense', 'twiggy_language_server', 'cssls', 'css_variables' }

-- TypeScript requires some extra config
lspconfig.tsserver.setup {
    capabilities = capabilities,
    init_options = {
        plugins = {
            {
                name = '@vue/typescript-plugin',
                location = '/home/command_maker/.local/share/pnpm/global/5/node_modules/@vue/typescript-plugin',
                languages = {'javascript', 'typescript', 'vue'},
            },
        },
    },
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx', 'vue' }
}

lspconfig.emmet_ls.setup {
    filetypes = { 'astro', 'css', 'eruby', 'html', 'htmldjango', 'javascriptreact', 'less', 'pug', 'sass', 'scss', 'svelte', 'typescriptreact', 'vue', 'twig' }
}

for _, server in ipairs(servers) do
    lspconfig[server].setup {
        capabilities = capabilities
    }
end
