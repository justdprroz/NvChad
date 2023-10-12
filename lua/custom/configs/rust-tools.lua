local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local options = {
  server = {
    on_attach = function (_, bufnr)
      -- vim.keymap.set("n", "<leader>ca", require("rust-tools").code_action_group.code_action_group, "Rust code actions", opts = { buffer = bufnr })
      require("core.utils").load_mappings("rust", { buffer = bufnr })
    end,
    capabilities = capabilities,
  }
}

return options
