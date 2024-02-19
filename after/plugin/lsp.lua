local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    --auto format
    vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format {
                async = false,
            }
        end
    })
end)

--mason
require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
        astro = function()
            require('lspconfig').astro.setup({})
        end,
    },
})
