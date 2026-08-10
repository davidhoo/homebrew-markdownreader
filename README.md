# homebrew-markdownreader

自建 Homebrew Tap，用于通过 Homebrew 安装与更新 [MarkdownReader](https://github.com/davidhoo/MarkdownReader) —— 一个原生 macOS Markdown 阅读器。

这是**可选**渠道。MarkdownReader 仍以 GitHub Release 的 DMG 直装和应用内更新为主要安装方式；Homebrew 只负责安装与可选升级，二者互不干扰。

## 安装

```bash
brew tap davidhoo/markdownreader
brew install --cask markdownreader
```

## 升级

由于 Cask 声明了 `auto_updates true`（应用本身具备应用内更新能力），普通 `brew upgrade` 不会主动拉取新版本。需要由 Homebrew 强制升级时使用 `--greedy`：

```bash
brew update
brew upgrade --cask --greedy markdownreader
```

## 系统要求

- macOS 26 (Tahoe) 或更高版本
- Apple Silicon（arm64）

## 关于公证（重要）

MarkdownReader 是**开发者签名但未公证**（未购买 Apple Developer Program，未做 Developer ID 签名、公证或 stapling）。Homebrew 安装时不会、也不应自动绕过 Gatekeeper。

如果首次启动被 macOS 拦截：

1. 在「应用程序」中找到 MarkdownReader，按住 **Control** 点击它，选择「**打开**」，在弹窗中确认。
2. 或打开「**系统设置 > 隐私与安全性**」，找到被阻止的提示，点击「**仍要打开**」。

本 Tap 不提供 `xattr`、`spctl --master-disable` 或任何自动移除隔离属性的命令，也不使用 `sudo`。请走 macOS 原生的人工放行流程。

## 卸载

```bash
brew uninstall --cask markdownreader
```

卸载只移除 `MarkdownReader.app` 本身，不删除用户设置、文档或其他数据。

## 版本与 SHA-256

Cask 的 `version` 与 `sha256` 对应 GitHub Release [`v2.2.3`](https://github.com/davidhoo/MarkdownReader/releases/tag/v2.2.3) 中的 `MarkdownReader.dmg`。

每次新版本发布后，本 Tap 会按 [docs/homebrew-tap-maintenance.md](https://github.com/davidhoo/MarkdownReader/blob/main/docs/homebrew-tap-maintenance.md) 的流程人工更新 `Casks/markdownreader.rb` 的 `version` 与 `sha256`。

## License

MIT。本 Tap 仅为 MarkdownReader 的安装分发提供便利，不改变其许可证。
