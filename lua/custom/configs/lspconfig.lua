local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

if vim.fn.has "win32" == 1 then
  lspconfig.omnisharp.setup {
    cmd = { "dotnet", vim.fn.stdpath "data" .. "\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll" },
    on_attach = on_attach,
    capabilities = capabilities,
  }
else
  lspconfig.omnisharp.setup {
    cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.stylelint_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    stylelintplus = {
      filetypes = { "css", "scss", "less", "html" },
    },
  },
}

--
-- lspconfig.pyright.setup { blabla}
