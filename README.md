# Nvim config

Configuração minimalista, rápida e modular para o **Neovim** (baseada em Lua), projetada para oferecer os alguns recursos do **VS Code** (LSP, Autocompletion, Árvore de Arquivos, Fuzzy Finder e Sintaxe avançada) sem o peso de uma IDE tradicional.

## ⚡ Stack & Ferramentas Instaladas

### 🛠️ Core & Gerenciamento

- **[lazy.nvim](https://github.com/folke/lazy.nvim):** gerenciador de plugins moderno, rápido e com *lazy-loading*.
- **[Mason.nvim](https://github.com/williamboman/mason.nvim):** Gerenciador visual para baixar e atualizar servidores LSP, formatadores e linters.

### 🧠 Inteligência & Autocompletar (LSP)

- **`nvim-lspconfig` + `mason-lspconfig`:** Integração nativa com Language Servers (`jdtls` para Java, `clangd` para C/C++, `ts_ls` para TS/JS).
- **`nvim-cmp`:** Motor de autocompletar pop-up com suporte a fontes LSP, buffers abertos e caminhos de arquivos (`cmp-nvim-lsp`, `cmp-buffer`, `cmp-path`).

### 🎨 Visual & Sintaxe

- **[Catppuccin Mocha](https://github.com/catppuccin/nvim):** Tema escuro de alto contraste e suave para a vista.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** Highlighting de sintaxe baseado em AST (Abstract Syntax Tree) para análise real do código.
- **[render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim):** Renderizador visual embutido para arquivos Markdown (tabelas, checkboxes e títulos).

### 📁 Navegação & Busca

- **[Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim):** Árvore visual de diretórios no estilo VS Code.
- **[fzf-lua](https://github.com/ibhagwan/fzf-lua):** Busca ultra-rápida (fuzzy finder) de arquivos, texto no projeto (*live grep*) e símbolos de código.

## ⌨️ Principais Atalhos (Keymaps)

> **Leader Key:** `Espaço`


| **Atalho** | **Ação** |
| --- | --- |
| `<leader>e` | Abre / Fecha a Árvore de Arquivos (Neo-tree) |
| `<leader>ff` | Buscar arquivos por nome (Fuzzy Finder) |
| `<leader>fg` | Buscar texto dentro dos arquivos (*Live Grep*) |
| `<leader>fs` | Buscar métodos, classes e símbolos no arquivo |
| `<leader>?` | Lista interativa de todos os atalhos do editor |
| `<Tab>` / `<S-Tab>` | Ir para o próximo arquivo / arquivo anterior |
| `<leader>bd` | Fechar o arquivo (buffer) atual |
| `<leader>sv` / `<leader>sh` | Dividir janela na vertical / horizontal |

## 📋 Pré-requisitos de Sistema

Antes de clonar, certifique-se de ter no sistema:

- **Neovim** (v0.9.0 ou superior)
- **Git**
- **Compilador C** e utilitários (necessários para o Treesitter e Mason):

    - *Ubuntu/Debian/Kali:* `sudo apt install build-essential curl tar unzip gzip ripgrep`
    - *Fedora:* `sudo dnf groupinstall "Development Tools"`
    - *Arch Linux:* `sudo pacman -S base-devel curl unzip ripgrep`

- **Nerd Fonts** configurada no seu terminal (para os ícones do Neo-tree e FZF).

## 🚀 Instalação Rápida (Passo a Passo)

### 1. Clonar a Configuração

Faça o clone do repositório direto na pasta de configurações do Neovim (`~/.config/nvim`):

```
git clone https://github.com/Gu1assis/nvim.git ~/.config/nvim
```

### 2. Abrir o Neovim

Inicie o Neovim. O **lazy.nvim** se auto-instalará e baixará todos os plugins listados automaticamente

### 3. Sincronizar e Instalar Servidores LSP

Após a instalação automática dos plugins (pressione `q` para fechar o menu do Lazy se necessário), os servidores LSP padrão serão baixados pelo Mason.

Se quiser instalar novos LSPs ou verificar o status dos servidores:

```
:Mason
```

*(Navegue até o LSP desejado e pressione `i` para instalar).*
