return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          before_init = function(_, new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(
              new_config.settings.json.schemas,
              require("schemastore").json.schemas({
                replace = {
                  ["tsconfig.json"] = {
                    description = "Custom JSON schema for typescript configuration files",
                    fileMatch = { "tsconfig.json", "tsconfig.*.json[c]" },
                    name = "tsconfig.json",
                    url = "https://json.schemastore.org/tsconfig.json",
                  },
                },
              })
            )
          end,
        },
      },
    },
  },
}
