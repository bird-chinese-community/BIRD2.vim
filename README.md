# bird2.vim

<div align="center">

**Vim syntax highlighting for BIRD2 configuration files**

English | [简体中文](README.zh-CN.md)

[![License: MPL-2.0](https://img.shields.io/badge/License-MPL--2.0-blue.svg)](LICENSE)
[![Vim](https://img.shields.io/badge/Vim-8.0+-green.svg)](https://www.vim.org/)

</div>

## Overview

`bird2.vim` provides Vim syntax highlighting, filetype detection, and filetype plugin support for [BIRD2](https://bird.network.cz/) configuration files.

This is the Vim plugin component of the [BIRD-tm-language-grammar](https://github.com/bird-chinese-community/bird-tm-language-grammar) project by the BIRD Chinese Community.

## Features

- Syntax highlighting for all BIRD2 configuration elements
- Automatic filetype detection for `.bird`, `.bird2`, `.bird3`, and `.conf` files
- Smart heuristic detection for generic `.conf` files
- Filetype-specific settings (comments, format options, etc.)

## Installation

### Using vim-plug

```vim
Plug 'bird-chinese-community/bird2.vim'
```

### Using Vundle

```vim
Plugin 'bird-chinese-community/bird2.vim'
```

### Using pack.nvim (Neovim/Vim 8+)

```vim
packadd! bird2.vim
```

Or manually clone to your pack directory:

```bash
git clone https://github.com/bird-chinese-community/bird2.vim \
  ~/.vim/pack/plugins/start/bird2.vim
```

### Manual Installation

```bash
git clone https://github.com/bird-chinese-community/bird2.vim.git
cd bird2.vim
bash scripts/install.sh
```

## Filetype Detection

The plugin automatically detects BIRD2 configuration files by:

- **Extension**: `.bird`, `.bird2`, `.bird3`, `.bird*.conf`
- **Filename**: `bird.conf`, `bird6.conf`
- **Content**: Scans first 200 lines of `.conf` files for BIRD2-specific patterns:
  - Protocol definitions (`protocol bgp`, `protocol ospf`, etc.)
  - Keywords like `router id`, `template`, `filter`, `function`
  - Flow/ROA table definitions

## Documentation

After installation, view the help documentation:

```vim
:help bird2
```

To regenerate help tags:

```vim
:helptags ~/.vim/doc
```

## Configuration

No configuration is required. The plugin works out of the box.

### Disable heuristic detection

If you want to disable content-based detection for `.conf` files:

```vim
let g:bird2_heuristic_detect = 0
```

### Custom file extensions

To add custom file extensions:

```vim
autocmd BufRead,BufNewFile *.myext setfiletype bird2
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

- Plugin files: [Mozilla Public License 2.0](LICENSE)
- Copyright (c) BIRD Chinese Community

## Related Projects

- [BIRD-tm-language-grammar](https://github.com/bird-chinese-community/bird-tm-language-grammar) - TextMate grammar for BIRD2
- [bird2.nvim](https://github.com/bird-chinese-community/bird2.nvim) - Neovim plugin
- [vscode-bird2](https://github.com/bird-chinese-community/vscode-bird2-conf) - VS Code extension

## Acknowledgments

This plugin is maintained by the [BIRD Chinese Community](https://github.com/bird-chinese-community).
