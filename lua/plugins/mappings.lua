return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- better buffer navigation
          ["]b"] = false,
          ["[b"] = false,
          ["<C-e>"] = "$",
          ["<C-a>"] = "0",
          ["<C-f>"] = {
            function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          ["<C-b>"] = {
            function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
          },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          ['<space>la'] = { '<cmd>lua vim.lsp.buf.code_action()<cr>' },
          ['<space>l.'] = { '<cmd>Lspsaga finder<cr>' },
          ['<space>r'] = {'<cmd>Lspsaga rename<cr>'},
          ['K'] = {'<cmd>Lspsaga show_line_diagnostics<cr>'},
          ['J'] = {'<cmd>Lspsaga signature_help<cr>'},
          ['H'] = {'<cmd>Lspsaga preview_definition<cr>'},
          ['<space>lr'] = {'<cmd>lua vim.lsp.buf.references()<cr>'},
          ['<space>lm'] = {'<cmd>lua vim.lsp.buf.definition()<cr>'},
        }
      },
    },
  },
}
