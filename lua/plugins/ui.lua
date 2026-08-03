return {
  -- Tema Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({ flavour = "mocha" })
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Highlighting de Sintaxe
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" }, -- Carrega o plugin assim que você abre um arquivo
    opts = {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "java", "javascript", "typescript", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      -- Usa pcall para evitar crash se o módulo estiver ausente
      local status, ts_configs = pcall(require, "nvim-treesitter.configs")
      if status then
        ts_configs.setup(opts)
      end
    end,
  },
  -- Árvore de Arquivos (Neo-tree)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", ":Neotree toggle<CR>", desc = "Toggle File Tree" },
    },
  },

  -- Fuzzy Finder (fzf-lua)
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>ff", function() require("fzf-lua").files() end, desc = "Buscar arquivos" },
      { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Buscar texto" },
      { "<leader>fs", function() require("fzf-lua").lsp_document_symbols() end, desc = "Buscar símbolos" },
    },
  },

  -- Visualizador embutido de Markdown
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    ft = { "markdown" },
  },
  -- Visualizar keymaps
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>ff", function() require("fzf-lua").files() end, desc = "Buscar arquivos" },
        { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Buscar texto" },
        { "<leader>fs", function() require("fzf-lua").lsp_document_symbols() end, desc = "Buscar símbolos" },
        -- Mapeamento para abrir a busca fuzzy de atalhos:
        { "<leader>?",  function() require("fzf-lua").keymaps() end, desc = "Listar keymaps do editor" },
      },
    }
  }
