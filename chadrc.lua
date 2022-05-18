-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require "custom.plugins"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.options = {
   user = function()
       require("custom.myoptions")
   end,
}

M.plugins = {
    status = {
        colorizer = true
    },

    options = {
        lspconfig = {
           setup_lspconf = "custom.plugins.lspconfig",
        },
    },

    user = userPlugins
}

M.ui = {
    theme_toggle = { "gruvbox", "onedark" },
    theme = "gruvbox"
}

return M
