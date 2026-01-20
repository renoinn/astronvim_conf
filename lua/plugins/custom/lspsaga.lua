return {
  {
    "glepnir/lspsaga.nvim",
    name = "lspsaga",
    event = "LspAttach",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
      require("lspsaga").setup({
        finder = {
          default = "def+ref+imp"
        }
      })
    end,
  },
}
