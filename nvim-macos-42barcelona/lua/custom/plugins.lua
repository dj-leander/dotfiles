local plugins = {

  {
    "Diogo-ss/42-header.nvim",
    lazy = false,
    config = function()
        local header = require("42header")
        header.setup({
            default_map = true, -- default Mapping <F1> in normal mode
            auto_update = true,  -- update header when saving
            user = "ksalazar", -- your user
            mail = "ksalazar@student.42barcelona.com", -- your mail
        })
    end
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      dap.adapters.c = {
        type = 'executable',
        command = 'lldb',  -- Adjust this to 'gdb' if using GDB
        name = "lldb"
      }
      -- dap.configurations.c = {
      --   {
      --     name = "Launch",
      --     type = "c",
      --     request = "launch",
      --     program = function()
      --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      --     end,
      --     args = {},
      --     cwd = vim.fn.getcwd(),
      --     stopOnEntry = false,
      --     runInTerminal = true,
      --   }
      -- }
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
  "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
      }
    }
  }
}
return plugins
