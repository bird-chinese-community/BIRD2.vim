# bird2.vim

<div align="center">

**BIRD2 配置文件的 Vim 语法高亮插件**

[English](README.md) | 简体中文

[![License: MPL-2.0](https://img.shields.io/badge/License-MPL--2.0-blue.svg)](LICENSE)
[![Vim](https://img.shields.io/badge/Vim-8.0+-green.svg)](https://www.vim.org/)

</div>

## 概述

`bird2.vim` 为 [BIRD2](https://bird.network.cz/) 配置文件提供 Vim 语法高亮、文件类型检测和文件类型插件支持。

这是 [BIRD 中文社区](https://github.com/bird-chinese-community) 的 [BIRD-tm-language-grammar](https://github.com/bird-chinese-community/bird-tm-language-grammar) 项目的 Vim 插件组件。

## 功能特性

- 完整的 BIRD2 配置语法高亮
- 自动文件类型检测（`.bird`, `.bird2`, `.bird3`, `.conf` 等扩展名）
- 对通用 `.conf` 文件的智能启发式检测
- 文件类型特定设置（注释、格式选项等）

## 安装

### 使用 vim-plug

```vim
Plug 'bird-chinese-community/bird2.vim'
```

### 使用 Vundle

```vim
Plugin 'bird-chinese-community/bird2.vim'
```

### 使用 pack.nvim (Neovim/Vim 8+)

```vim
packadd! bird2.vim
```

或手动克隆到 pack 目录：

```bash
git clone https://github.com/bird-chinese-community/bird2.vim \
  ~/.vim/pack/plugins/start/bird2.vim
```

### 手动安装

```bash
git clone https://github.com/bird-chinese-community/bird2.vim.git
cd bird2.vim
bash scripts/install.sh
```

## 文件类型检测

插件通过以下方式自动检测 BIRD2 配置文件：

- **扩展名**：`.bird`, `.bird2`, `.bird3`, `.bird*.conf`
- **文件名**：`bird.conf`, `bird6.conf`
- **内容检测**：扫描 `.conf` 文件的前 200 行，查找 BIRD2 特定模式：
  - 协议定义（`protocol bgp`, `protocol ospf` 等）
  - 关键字如 `router id`, `template`, `filter`, `function`
  - Flow/ROA 表定义

## 文档

安装后，可查看帮助文档：

```vim
:help bird2
```

重新生成帮助标签：

```vim
:helptags ~/.vim/doc
```

## 配置

无需配置即可使用。

### 禁用启发式检测

如需禁用 `.conf` 文件的内容检测：

```vim
let g:bird2_heuristic_detect = 0
```

### 自定义文件扩展名

添加自定义文件扩展名：

```vim
autocmd BufRead,BufNewFile *.myext setfiletype bird2
```

## 贡献

欢迎贡献！请随时提交 Pull Request。

## 许可证

- 插件文件：[Mozilla Public License 2.0](LICENSE)
- 版权所有 (c) BIRD 中文社区

## 相关项目

- [BIRD-tm-language-grammar](https://github.com/bird-chinese-community/bird-tm-language-grammar) - BIRD2 的 TextMate 语法
- [bird2.nvim](https://github.com/bird-chinese-community/bird2.nvim) - Neovim 插件
- [vscode-bird2](https://github.com/bird-chinese-community/vscode-bird2-conf) - VS Code 扩展

## 鸣谢

此插件由 [BIRD 中文社区](https://github.com/bird-chinese-community) 维护。
