return {
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup({
        enabled = false
      })
      vim.keymap.set("i", "<A-space>", function()
        require("neocodeium").accept()
      end)
      vim.keymap.set("i", "<A-s-space>", function()
        require("neocodeium").accept_line()
      end)
      vim.keymap.set("i", "<A-w>", function()
        require("neocodeium").accept_word()
      end)
      vim.keymap.set("i", "<A-e>", function()
        require("neocodeium").cycle_or_complete()
      end)
      vim.keymap.set("i", "<A-r>", function()
        require("neocodeium").cycle_or_complete(-1)
      end)
      vim.keymap.set("i", "<A-c>", function()
        require("neocodeium").clear()
      end)
    end,
  },
}
