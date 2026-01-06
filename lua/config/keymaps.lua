-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clipboard keymaps
vim.keymap.set("n", "<leader>y", '"+yy', { desc = "[Y]ank to clipboard" })
vim.keymap.set({ "v" }, "<leader>y", '"+y', { desc = "[Y]ank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "[P]aste from clipboard" })

vim.keymap.set({ "c", "i" }, "<c-j>", "<c-n>", { remap = true })
vim.keymap.set({ "c", "i" }, "<c-k>", "<c-p>", { remap = true })

vim.keymap.set("n", "<leader>bo", function()
  local bufferline = require("bufferline")
  local commands = require("bufferline.commands")
  local current = vim.api.nvim_get_current_buf()
  vim.schedule(function()
    for _, e in ipairs(bufferline.get_elements().elements) do
      local is_current = e.id == current
      local is_pinned = bufferline.groups._is_pinned(e)
      if not is_current and not is_pinned then
        commands.unpin_and_close(e.id)
      end
    end
  end)
end, { desc = "Delete Other Buffers (except pinned)" })
