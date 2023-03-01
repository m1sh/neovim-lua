local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

local on_attach = function(client, bufno)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig['html'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig['unocss'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig['intelephense'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig['lua_ls'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig['tsserver'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})
