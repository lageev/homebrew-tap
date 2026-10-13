# Homebrew Tap

[lageev](https://github.com/lageev) 发布的 macOS 应用的 [Homebrew](https://brew.sh) tap。本仓库提供 Cask 定义；安装时 Homebrew 从各应用的发布页下载 zip，并把 `.app` 放入 `/Applications`。

| Cask | 当前版本 | 说明 | 系统要求 |
| --- | --- | --- | --- |
| [`studio-mini`](Casks/studio-mini.rb) | 0.2.11（build 23） | 构建、安装并管理 Android APK | Apple Silicon（arm64），macOS Sonoma (14) 及以上 |
| [`focusmic`](Casks/focusmic.rb) | 0.0.4 | 将默认音频输入锁定为选定的麦克风 | macOS Sequoia (15) 及以上 |

版本以对应 Cask 文件中的 `version` 为准。

## 要求

- macOS
- [Homebrew](https://brew.sh)

## 安装

添加 tap：

```sh
brew tap lageev/tap
```

使用 `lageev/tap/<cask>` 安装时，Homebrew 会自动添加本 tap。

### Studio Mini

构建、安装并管理 Android APK。仅支持 Apple Silicon（arm64），需要 macOS Sonoma (14) 或更高版本。Cask 声明了 `auto_updates`，应用会自行检查更新。

- 主页：<https://github.com/lageev/StudioMini>
- 当前安装包：<https://github.com/lageev/StudioMini/releases/download/v0.2.11/Studio-Mini-0.2.11.zip>

```sh
brew install --cask lageev/tap/studio-mini
```

### FocusMic

将 macOS 默认音频输入锁定为你选择的麦克风。需要 macOS Sequoia (15) 或更高版本。

- 主页：<https://focusmic.yayalu.top/>
- 发布页：<https://github.com/lageev/FocusMic>
- 当前安装包：<https://github.com/lageev/FocusMic/releases/download/v0.0.4/FocusMic-0.0.4.zip>

```sh
brew install --cask lageev/tap/focusmic
```

## 更新与卸载

先更新 tap 信息，再升级 Cask：

```sh
brew update
brew upgrade --cask focusmic
```

Studio Mini 开启了应用内自动更新，Homebrew 默认不会升级它。需要用 Homebrew 安装新版本时：

```sh
brew upgrade --cask --greedy studio-mini
```

卸载应用：

```sh
brew uninstall --cask studio-mini
brew uninstall --cask focusmic
```

连同 Cask 里列出的配置与缓存一起删除：

```sh
brew uninstall --cask --zap studio-mini
brew uninstall --cask --zap focusmic
```

`studio-mini` 会退出 `com.fring.androidbuilddesk`。`--zap` 会删除：

- `~/Library/Application Support/AndroidBuildDesk`
- `~/Library/Caches/com.fring.androidbuilddesk`
- `~/Library/Preferences/com.fring.androidbuilddesk.plist`
- `~/Library/Saved Application State/com.fring.androidbuilddesk.savedState`

`focusmic` 会退出 `top.yayalu.FocusMic`。`--zap` 会删除 `~/Library/Preferences/top.yayalu.FocusMic.plist`。

## 仓库内容

```text
Casks/studio-mini.rb
Casks/focusmic.rb
```

---

## English

Homebrew tap for macOS apps published by [lageev](https://github.com/lageev). This repository contains the Cask definitions. Homebrew downloads each app's release zip and moves the `.app` into `/Applications`.

| Cask | Current version | Description | Requirements |
| --- | --- | --- | --- |
| [`studio-mini`](Casks/studio-mini.rb) | 0.2.11 (build 23) | Build, install, and manage Android APKs | Apple Silicon (arm64), macOS Sonoma (14) or later |
| [`focusmic`](Casks/focusmic.rb) | 0.0.4 | Keep the default audio input locked to your preferred microphone | macOS Sequoia (15) or later |

Versions follow the `version` field in each Cask file.

### Requirements

- macOS
- [Homebrew](https://brew.sh)

### Install

```sh
brew tap lageev/tap
```

Installing with the `lageev/tap/<cask>` name adds this tap automatically.

#### Studio Mini

Build, install, and manage Android APKs. Apple Silicon (arm64) only, on macOS Sonoma (14) or later. The Cask sets `auto_updates`, so the app checks for its own updates.

- Homepage: <https://github.com/lageev/StudioMini>
- Current package: <https://github.com/lageev/StudioMini/releases/download/v0.2.11/Studio-Mini-0.2.11.zip>

```sh
brew install --cask lageev/tap/studio-mini
```

#### FocusMic

Keeps the macOS default audio input locked to your preferred microphone. Requires macOS Sequoia (15) or later.

- Homepage: <https://focusmic.yayalu.top/>
- Releases: <https://github.com/lageev/FocusMic>
- Current package: <https://github.com/lageev/FocusMic/releases/download/v0.0.4/FocusMic-0.0.4.zip>

```sh
brew install --cask lageev/tap/focusmic
```

### Upgrade and uninstall

```sh
brew update
brew upgrade --cask focusmic
```

Studio Mini updates itself. To upgrade it through Homebrew:

```sh
brew upgrade --cask --greedy studio-mini
```

Uninstall:

```sh
brew uninstall --cask studio-mini
brew uninstall --cask focusmic
```

Remove the app together with the support files listed in the Cask:

```sh
brew uninstall --cask --zap studio-mini
brew uninstall --cask --zap focusmic
```

`studio-mini` quits `com.fring.androidbuilddesk`. `--zap` removes:

- `~/Library/Application Support/AndroidBuildDesk`
- `~/Library/Caches/com.fring.androidbuilddesk`
- `~/Library/Preferences/com.fring.androidbuilddesk.plist`
- `~/Library/Saved Application State/com.fring.androidbuilddesk.savedState`

`focusmic` quits `top.yayalu.FocusMic`. `--zap` removes `~/Library/Preferences/top.yayalu.FocusMic.plist`.

### Repository layout

```text
Casks/studio-mini.rb
Casks/focusmic.rb
```
