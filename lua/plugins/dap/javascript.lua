local dap = require("dap")

for _, language in ipairs({ "typescript", "javascript", "typescriptreact" }) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
    -- React Native for Hermes is currently not surpported
    -- {
    --   type = "pwa-node",
    --   request = "launch",
    --   name = "Debug iOS Hermes",
    --   trace = true, -- include debugger info
    --   cwd = "${workspaceFolder}",
    --   console = "integratedTerminal",
    --   platform = "ios",
    --   protocol = "inspector", -- Hermes uses Chrome's Inspector protocol
    -- },
  }
end
