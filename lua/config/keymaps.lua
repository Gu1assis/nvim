-- lua/config/keymaps.lua
local keymap = vim.keymap.set

-- Alternar entre buffers (como abas do VS Code)
-- ("mode", "key", "command") <CR> Significa ENTER 
-- Alternar tabs
keymap("n", "<tab>", ":bnext<CR>", { silent = true, desc = "Próximo arquivo" })
keymap("n", "<S-tab>", ":bnext<CR>", { silent = true, desc = "Arquivo Anterior" })

-- Fechar arquivo
keymap("n", "<leader>w", ":bdelete<CR>", { silent = true, desc = "Fechar arquivo atual" })

-- Split da tela
keymap("n", "<leader>sv", ":vsplit<CR>", { silent = true, desc = "Split vertical" })
keymap("n", "<leader>sh", ":split<CR>", { silent = true, desc = "Split horizontal" })
