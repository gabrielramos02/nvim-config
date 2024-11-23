return {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
        require('mason').setup({})
        require('mason-lspconfig').setup({
            -- Replace the language servers listed here 
            -- with the ones you want to install
            ensure_installed = {'lua_ls', 'bashls', 'basedpyright'},
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
                lua_ls = function ()
                    require('lspconfig').lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = {'vim'}
                                }
                            }
                        }
                    })
                end
            },
        })
    end
}
