require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls","angularls","omnisharp" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

-- Angular LSP config
vim.lsp.config("angularls", {
  cmd = {
    "ngserver",
    "--stdio",
    "--tsProbeLocations",
    vim.fn.getcwd() .. "/node_modules",
    "--ngProbeLocations",
    vim.fn.getcwd() .. "/node_modules/@angular/language-server",
  },
  root_dir = require("lspconfig.util").root_pattern("angular.json", "project.json"),
})

-- OmniSharp (C#) config
vim.lsp.config("omnisharp", {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/omnisharp" },
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
  root_dir = require("lspconfig.util").root_pattern("*.sln", "*.csproj", ".git"),
})

