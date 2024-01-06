-- local dap = require("dap")
-- dap.adapters.python = {
--   type = "executable",
--   command = "/usr/bin/python",
--   args = { "-m", "debugpy.adapter" },
-- }
-- dap.configurations.python = {
--   {
--     type = "python",
--     request = "launch",
--     name = "Launch file",
--     program = "${file}",
--     pythonPath = function()
--       return "/usr/bin/python"
--     end,
--   },
-- }
--
local dap = require("dap")

for _, language in ipairs({ "python" }) do
  dap.configurations[language] = {
    {
      type = "python",
      request = "launch",
      name = "Python Launch file",
      program = "${file}",
      pythonPath = function()
        return "/usr/bin/python"
      end,
    },
  }
end
