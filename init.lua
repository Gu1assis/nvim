-- This is my first nvim config
-- Vim Options are in ./config/options.lua
-- Keymaps are in ./config/keymaps.lua

-- Plugins

-- Loads native basics 
require("config.options")
require("config.keymaps")

-- Loads Lazy vim
require("config.lazy")
