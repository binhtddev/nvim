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
          vim.keymap.set("i", "<a-.>", function()
            require("neocodeium").accept()
          end)
          vim.keymap.set("i", "<a-]>", function()
            require("neocodeium").cycle_or_complete()
          end)
          vim.keymap.set("i", "<a-[>", function()
            require("neocodeium").cycle_or_complete(-1)
          end)
        end,
      })
    end,
  },
}
