return {
  "jay-babu/mason-null-ls.nvim",
  opts = {
    handlers = {
      -- for prettier
      prettier = function()
        require("null-ls").register(require("null-ls").builtins.formatting.prettier.with {
          condition = function(utils)
            return utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
          end,
        })
      end,
      -- for prettierd
      prettierd = function()
        require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
          condition = function(utils)
            return utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
          end,
        })
      end,
      -- For eslint_d:
      eslint_d = function()
        require("null-ls").register(require("none-ls.diagnostics.eslint_d").with {
          condition = function(utils)
            return utils.root_has_file "package.json"
                or utils.root_has_file ".eslintrc.json"
                or utils.root_has_file ".eslintrc.js"
                or utils.root_has_file "eslint.config.mjs"
          end,
        })
      end,
      -- For biome formatting:
      biome_format = function()
        require("null-ls").register(require("null-ls").builtins.formatting.biome.with {
          condition = function(utils) return utils.root_has_file "biome.json" end,
        })
      end,
    },
  },
}

