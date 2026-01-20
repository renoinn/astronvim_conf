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
          ["<space>l."] = { "<cmd>Lspsaga finder<cr>", desc = "Lspsaga finder" },
          ["<Leader>lK"] = { "<cmd>Lspsaga show_line_diagnostics<cr>", desc = "Lspsaga diagnostics" },
          ["<Leader>lH"] = { "<cmd>Lspsaga preview_definition<cr>", desc = "Lspsaga preview_definition" },
          ["<Leader>ln"] = { function() Snacks.picker.lsp_references() end, desc = "Lsp references" },
          ["<Leader>lm"] = { function() Snacks.picker.lsp_definitions() end, desc = "Lsp definition" },
          ["<Leader>li"] = { function() Snacks.picker.lsp_implementations() end, desc = "Lsp definition" },
        },
      },
    },
  },
}
