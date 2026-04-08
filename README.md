# Claude Code Conversation Colors

Customize the text colors in your Claude Code conversations. Pick one color for your text and a different color for Claude's text so you can instantly tell who said what.

![Claude Code Conversation Colors — color picker for customizing user and Claude text colors in terminal](screenshot.jpg)

## What it does

- Gives you a visual color picker to choose your text color and Claude's text color
- Applies the colors automatically — open a new tab and they're live
- Toggle the gray background behind your messages on or off
- Your settings are saved and persist across all new sessions after your save
- Rerun anytime to change colors

## Install

### macOS / Linux (curl)

```bash
curl -fsSL https://raw.githubusercontent.com/ProducerGuy/claude-code-conversation-colors/main/install.sh | sh
```

### macOS (Homebrew)

```bash
brew install ProducerGuy/homebrew-tap/claude-colors
```

### Manual download

Download the binary for your platform from [Releases](https://github.com/ProducerGuy/claude-code-conversation-colors/releases):

| Platform | Binary |
|----------|--------|
| Mac (Apple Silicon) | `claude-colors-macos-arm64` |
| Mac (Intel) | `claude-colors-macos-x64` |
| Linux (x64) | `claude-colors-linux-x64` |
| Windows (x64) | `claude-colors-windows-x64.exe` |

After downloading:

```bash
chmod +x claude-colors-macos-arm64
./claude-colors-macos-arm64
```

## Usage

Run the tool:

```bash
claude-colors
```

A color picker opens with two panels — one for your text, one for Claude's text. Click or drag the color field, adjust the RGB sliders, or click the values to type them directly. Press `B` to toggle the gray background behind your messages. Press `Enter` to save.

Open a new terminal tab and start Claude Code to see your colors.

## Change colors

Run `claude-colors` again. Your current colors load automatically. Pick new ones and hit Enter.

## Reset to defaults

```bash
claude-colors --uninstall
```

This restores everything to the original Claude Code colors:
- Your text color returns to white
- Claude's text color returns to white
- The gray background behind your messages is restored
- All saved color settings are removed

## Reapply after a Claude Code update

If Claude Code updates and your colors reset, just run:

```bash
claude-colors --reapply
```

Your saved colors are applied again instantly.

## Requirements

- Claude Code installed via npm
- macOS, Linux, or Windows

## License

MIT
