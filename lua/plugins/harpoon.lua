return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      global_settings = {
        save_on_toggle = true,
        save_on_change = true,
        excluded_filetypes = { "harpoon", "neo-tree" },
      },
    })
  end,
  keys = {
    { "<leader>h", "", desc = "Harpoon" },
    {
      "<leader>ha",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add File",
    },
    {
      "<leader>hq",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Toggle quick menu",
    },
  },
}
