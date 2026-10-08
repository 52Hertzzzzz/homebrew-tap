# Burnline · Homebrew Tap

按现在的烧法，我还能烧多久。

Burnline 是 macOS 菜单栏里的 AI 额度与续航工具。浮窗给续航结论，仪表盘显示各家额度、重置时间、趋势和计算依据。

## 安装

已安装 Homebrew 的用户：

```bash
brew install --cask 52Hertzzzzz/tap/burnline
open -a Burnline
```

直接下载安装包：[Burnline 1.0.0 · Apple Silicon](https://github.com/52Hertzzzzz/homebrew-tap/releases/download/v1.0.0/Burnline-1.0.0-arm64.dmg)。打开 DMG，把 Burnline 拖进「应用程序」。

当前版本为组内试用版，仅提供 Apple Silicon（M 系列）Mac 安装包。应用要求 macOS 12 或以上；使用 Homebrew 时还需满足你所安装的 Homebrew 版本要求。Intel Mac 和 Windows 尚未验收。

## 首次打开

本试用版尚未完成 Apple Developer ID 签名和公证。Homebrew 不会绕过 macOS 的安全检查，下载或安装成功不代表首次启动一定被允许。

如果 macOS 提示开发者无法验证，请先核对下载来源。仅当你确认信任此版本时，由你本人按 [Apple 官方说明](https://support.apple.com/102445) 在「系统设置 → 隐私与安全性」选择「仍要打开」。如果是公司管控的电脑且没有该选项，请联系管理员。

## 连接账号

- 腾讯、OpenCode Go：使用你自己在 Microsoft Edge 中的登录态，在应用里点击「连接」，按提示完成登录。
- Codex：需要你自己的 Codex 登录及兼容的 Codex CLI。
- 用量记录和账号状态保留在你的电脑；安装包不包含发布者的本机记录或登录数据。
- 续航按本地观测与历史习惯预估。首次没有可比消耗历史时，不能仅凭余额推导可靠的烧速。

## 更新

先从菜单栏退出 Burnline，再执行：

```bash
brew update
brew upgrade --cask 52Hertzzzzz/tap/burnline
open -a Burnline
```

应用不会通过本 Tap 自动在后台更新；上述命令用于检查和安装已发布的新版本。

## 卸载

```bash
brew uninstall --cask 52Hertzzzzz/tap/burnline
```

普通卸载保留本地数据，避免误删历史记录。没有提供清除账号或历史数据的自动脚本。

## 已经手动安装过 Burnline？

Homebrew 可能提示 `/Applications/Burnline.app` 已存在。先退出应用，再将旧应用移到废纸篓后执行安装命令；不要删除 `~/Library/Application Support/burnline`，该目录保存你的本地数据。

## 发布维护

这个仓库仅维护 Cask、说明和安装包索引，不包含应用源码。每个版本使用独立的 Release 下载路径和 SHA-256 校验值，不覆盖旧版本的安装包。

发布新版本时：生成并验证新 DMG → 上传对应版本的 Release → 更新 `Casks/burnline.rb` 的版本与 SHA-256 → 验证 Homebrew 下载和安装。

维护者可运行 Homebrew 的 Cask 检查和仓库测试：

```bash
brew audit --cask --strict 52Hertzzzzz/tap/burnline
brew ruby "$(brew --repository 52Hertzzzzz/tap)/test/cask_test.rb" /path/to/Burnline-1.0.0-arm64.dmg
```

完整公开发行仍需完成 Developer ID 签名、Apple 公证，以及另一台电脑上从下载到首次登录的验收。
