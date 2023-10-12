local M = {}

M.rust = {
  plugin = true,
  n = {
    ["<leader>ca"] = {
      function ()
        require("rust-tools").code_action_group.code_action_group()
      end,
      "Rust code action"
    },
    ["K"] = {
      function ()
        require("rust-tools").hover_actions.hover_actions()
      end,
      "Rust hover action",
    }
  }
}

return M
