return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  requires = {
    "nvim-lua/plenary",
    "stevearc/dressing.nvim",
  },
  after = "mason-lspconfig.nvim",
  config = function()
    local flutterBin = vim.fn.resolve(vim.fn.exepath("flutter.bat"))
    require("flutter-tools").setup({
      ui = {
        border = "rounded",
      },
      debugger = {
        enabled = true,
        -- run_via_dap = true,
        exception_breakpoints = {},
        register_configurations = function(_)
          local dap = require("dap")
          dap.adapters.dart = {
            type = "executable",
            command = vim.fn.expand("cmd.exe"),
            args = { "/c", flutterBin, "debug_adapter" },
            options = {
              detached = false,
            },
          }
          dap.configurations.dart = {}
          require("dap.ext.vscode").load_launchjs()
          -- dap.configurations.dart = {
          --   {
          --     type = "dart",
          --     request = "launch",
          --     name = "Launch Flutter --Development",
          --     dartSdkPath = dartSdk,
          --     flutterSdkPath = flutterSdk,
          --     program = "${workspaceFolder}/lib/main/main_development.dart",
          --     cwd = "${workspaceFolder}",
          --     toolArgs = {
          --       "-d",
          --       "sdk gphone64 x86 64",
          --     },
          --     sendLogsToClient = true,
          --   },
          -- }
        end,
      },
      widget_guides = {
        enabled = true,
      },
    })
    -- require("flutter-tools").setup_project({
    --   name = "Development",
    --   flavor = "development",
    --   target = "lib/main/main_development.dart",
    --   device = "Pixel 2 API 30",
    --   dart_define = {},
    --   dart_define_from_file = "config.json",
    -- })
  end,
}
