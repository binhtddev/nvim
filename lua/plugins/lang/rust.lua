return {
  {
    "rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = { command = "check" },
            -- checkOnSave = false,
          },
        },
      },
    },
  },
}
