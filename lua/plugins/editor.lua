local function shrink_expand_selection()
  require("flash").treesitter({
    actions = {
      ["<a-o>"] = "next",
      ["<a-i>"] = "prev",
    },
    labels = "",
  })
end

return {
  {
    "folke/flash.nvim",
    keys = {
      {
        "<a-o>",
        mode = { "n", "o", "x" },
        shrink_expand_selection,
        desc = "Treesitter Expand Selection",
      },
      {
        "<a-i>",
        mode = { "n", "o", "x" },
        shrink_expand_selection,
        desc = "Treesitter Shrink Selection",
      },
    },
  },
}
