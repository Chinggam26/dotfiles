-- Mason Setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig")["pyright"].setup {
  capabilities = capabilities
}
require("lspconfig")["jdtls"].setup {
  capabilities = capabilities
}
require("lspconfig")["clangd"].setup{
  capabilities = capabilities
}
