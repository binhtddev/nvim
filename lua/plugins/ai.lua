return {
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup({
        enabled = false,
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "NeoCodeiumServerConnected",
        group = vim.api.nvim_create_augroup("user_neocodeium", { clear = true }),
        callback = function()
          vim.keymap.set("i", "<a-space>", function()
            require("neocodeium").accept()
          end)
          vim.keymap.set("i", "<a-s-space>", function()
            require("neocodeium").accept_line()
          end)
          vim.keymap.set("i", "<a-w>", function()
            require("neocodeium").accept_word()
          end)
          vim.keymap.set("i", "<a-e>", function()
            require("neocodeium").cycle_or_complete()
          end)
          vim.keymap.set("i", "<a-r>", function()
            require("neocodeium").cycle_or_complete(-1)
          end)
          vim.keymap.set("i", "<a-c>", function()
            require("neocodeium").clear()
          end)
        end,
      })
    end,
  },
}
