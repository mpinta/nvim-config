# nvim-config
My Neovim configuration.

## About
This is the Neovim configuration I'm currently using. The files are written in the Lua programming language and can change frequently based on my usage. Feel free to use them or to find inspiration.

The configuration structure looks like this:
```
nvim
├── init.lua
├── lazy-lock.json
└── lua
    └── mpinta
        ├── core
        │   ├── helpers.lua
        │   ├── init.lua
        │   ├── keymaps.lua
        │   └── options.lua
        ├── lazy.lua
        └── plugins
            ├── catppuccin.lua
            ├── conform.lua
            ├── dressing.lua
            ├── init.lua
            ├── lsp-zero.lua
            ├── lualine.lua
            ├── mason.lua
            ├── neoscroll.lua
            ├── nvim-cmp.lua
            ├── nvim-lint.lua
            ├── nvim-telescope.lua
            ├── nvim-treesitter.lua
            ├── outln.lua
            ├── toggleterm.lua
            ├── vim-better-whitespace.lua
            └── vim-current-word.lua
```

## Usage
Clone the repository and copy the `nvim` directory to `$XDG_CONFIG_HOME`:
```
$ git clone https://github.com/mpinta/nvim-config
$ cd nvim-config
$ cp -r nvim $XDG_CONFIG_HOME
```

### Plugins
Plugins are managed with the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager, which can be opened with the `<Space>lz` keymap. Their definitions can be found in the `nvim/lua/mpinta/lazy.lua` file. When you open Neovim for the first time, the plugins should be installed automatically, but you may also need to manually install some dependencies such as `python`, `node` or `yarn`.

Each plugin can be (re)configured inside the `nvim/lua/mpinta/plugins` directory. For example, configure LSPs, formatters, linters and completion here:
| Source | File |
|---|---|
| LSPs | `nvim/lua/mpinta/plugins/mason.lua` |
| Formatters | `nvim/lua/mpinta/plugins/conform.lua` |
| Linters | `nvim/lua/mpinta/plugins/nvim-lint.lua` |
| Completion | `nvim/lua/mpinta/plugins/nvim-cmp.lua` |

Configured LSPs, formatters and linters have to be manually installed using the [mason.nvim](https://github.com/williamboman/mason.nvim) plugin. You can open it by triggering the `<Space>ma` keymap.

### Core
The `nvim/lua/mpinta/core` directory contains basic options, helpers and custom keymaps. Those can also be (re)configured:
| Source | File |
|---|---|
| Options | `nvim/lua/mpinta/core/options.lua` |
| Helpers | `nvim/lua/mpinta/core/helpers.lua` |
| Keymaps | `nvim/lua/mpinta/core/keymaps.lua` |

## That's it!
The `init.lua` files glue everything together and that's basically it. Have fun (re)using it!
