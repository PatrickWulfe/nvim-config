return {
  "rgroli/other.nvim",
  config = function()
    require("other-nvim").setup({
      mappings = {
        "golang",
        {
          pattern = "/lib/(.*)/(.*).dart$",
          target = "/test/%1/%2_test.dart",
        },
        {
          pattern = "/test/(.*)/(.*)_test.dart$",
          target = "/lib/%1/%2.dart",
        },
      },
    })
  end,
  keys = {
    {
      "<leader>fa",
      function()
        require("other-nvim").open()
      end,
      desc = "Switch to 'Other' file",
    },
    {
      "<leader>fA",
      function()
        require("other-nvim").openVSplit()
      end,
      desc = "Switch to 'Other' file in split",
    },
  },
}
