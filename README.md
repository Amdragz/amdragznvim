
# amdragz.nvim

## 📦 Overview

**amdragz.nvim** is a fully-featured, modular Neovim configuration designed for modern development in **Rust**, **Vue**, **TypeScript**, **React and Nextjs**, **flutter** and more. It leverages the latest plugins, tooling, and best practices with a focus on speed, clarity, and clean organization.

This configuration is built using the Lazy.nvim plugin manager and is compatible with Neovim **0.11+**.

clone with **git clone https://github.com/Amdragz/amdragznvim ~/.config/nvim**

---

## 🗂️ Directory Structure

```bash
.
├── init.lua
├── lsp/
│  ├── lua_ls.lua
│  ├── tailwind.lua
│  └── ts_ls.lua
├── lua/
│  ├── chadrc.lua
│  ├── configs/
│  │  ├── autocmds.lua
│  │  ├── mappings.lua
│  │  └── options.lua
│  ├── core/
│  │  ├── lazy.lua
│  │  └── lsp.lua
│  ├── plugins/
│  │  ├── autocomplete.lua
│  │  ├── comment.lua
│  │  ├── debugger.lua
│  │  ├── flutter.lua
│  │  ├── formatters.lua
│  │  ├── git.lua
│  │  ├── icons.lua
│  │  ├── indentation.lua
│  │  ├── lazygit.lua
│  │  ├── lspconfig.lua
│  │  ├── mason.lua
│  │  ├── nvimtree.lua
│  │  ├── obsidian.lua
│  │  ├── plenary.lua
│  │  ├── rust.lua
│  │  ├── snacks.lua
│  │  ├── telescope.lua
│  │  ├── todos.lua
│  │  ├── treesitter.lua
│  │  ├── typescript.lua
│  │  ├── ui.lua
│  │  └── whichkey.lua
│  └── userlsp/
│     ├── vtsls.lua
│     └── vue_ls.lua
└── README.md
```

---

## 🚀 Installation

### ✅ Requirements

* **Neovim 0.11+** (Only stable is supported)
* **Nerd Font** (Non-Mono variant recommended)
* [Ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope fuzzy search)
* Build tools (depending on OS): `gcc`, `make`, `cmake`, `mingw` (Windows), etc.

### 🛠 OS Config Path

| OS                   | Path                                        |
| -------------------- | ------------------------------------------- |
| Linux/macOS          | `~/.config/nvim` or `$XDG_CONFIG_HOME/nvim` |
| Windows (CMD)        | `%LOCALAPPDATA%\nvim\`                      |
| Windows (PowerShell) | `$env:LOCALAPPDATA\nvim\`                   |

### 🧹 Clean up old installs

Make sure you remove any existing Neovim configuration at the paths above before installing.

### 🔧 Post Installation

Once cloned into your config path:

```bash
nvim
```

This will launch Lazy and automatically install all dependencies.
Use `:Lazy` to view plugin status.
Use `:Mason` to verify LSP, linters, and formatters.

---

## 🧠 Notes

* This config uses **`typescript-tools.nvim`** and **`vtsls.nvim`** for TypeScript and Vue.
* Formatters are managed with **`conform.nvim`** and include:

  * `prettierd` for JS/TS/Vue
  * `stylua` for Lua
  * `pgformatter` for SQL
  * `eslint_d` as a fast ESLint alternative
* Linting and formatting tools are automatically managed via **`mason-tool-installer.nvim`**.
* Commenting and JSX-aware commenting uses **`nvim-ts-context-commentstring`**.
* Tag management with **`nvim-ts-autotag`**.

---

## 💻 Windows Tips

<details>
<summary>Using Microsoft C++ Build Tools + CMake</summary>

Install Microsoft C++ Build Tools and CMake. Then build native plugins with:

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```

</details>

<details>
<summary>Using Chocolatey (gcc + make)</summary>

```bash
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```

</details>

<details>
<summary>WSL</summary>

```bash
wsl --install
sudo apt install gcc make ripgrep unzip git neovim
```

</details>

# Ubuntu install options

option 1
# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo mkdir -p /opt/nvim-linux-x86_64
sudo chmod a+rX /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/


option 2
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim

---

## 📚 Resources

* [Lazy.nvim](https://github.com/folke/lazy.nvim)
* [Mason.nvim](https://github.com/williamboman/mason.nvim)
* [Conform.nvim](https://github.com/stevearc/conform.nvim)
* [typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim)
* [vtsls.nvim](https://github.com/yioneko/vtsls)
* [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
* [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

---

## 🔍 License

This configuration is open source under the MIT License. Pull requests, suggestions, and contributions are welcome!

