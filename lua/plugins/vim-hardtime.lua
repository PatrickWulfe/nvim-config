return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    require("hardtime").setup({
      disabled_filetypes = {
        "neo-tree",
        "qf",
        "netrw",
        "NvimTree",
        "lazy",
        "mason",
      },
      disabled_keys = {
        ["<Up>"] = {},
        ["<Down>"] = {},
        ["<Left>"] = {},
        ["<Right>"] = {},
      },
    })
  end,
}
