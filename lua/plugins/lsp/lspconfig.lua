local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
  return
end

local on_attach = function(client, bufno)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config("html", {})
vim.lsp.config("unocss", {})
vim.lsp.config("intelephense", {})
vim.lsp.config("psalm", {})
vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } }, }, }, })
vim.lsp.config("ts_ls", {})
vim.lsp.config("vue_ls", {})

vim.lsp.enable("html")
vim.lsp.enable("unocss")
vim.lsp.enable("intelephense")
vim.lsp.enable("psalm")
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("vue_ls")

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
  float = { border = "rounded" },
})
