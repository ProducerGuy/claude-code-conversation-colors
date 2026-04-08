#!/bin/bash
set -e

# Claude Code Conversation Colors — Installer
# https://github.com/ProducerGuy/claude-code-conversation-colors

REPO="ProducerGuy/claude-code-conversation-colors"
INSTALL_DIR="/usr/local/bin"
BINARY_NAME="claude-colors"

# Detect platform
OS="$(uname -s)"
ARCH="$(uname -m)"

case "${OS}-${ARCH}" in
    Darwin-arm64)   ASSET="claude-colors-macos-arm64" ;;
    Darwin-x86_64)  ASSET="claude-colors-macos-x64" ;;
    Linux-x86_64)   ASSET="claude-colors-linux-x64" ;;
    *)
        echo "Unsupported platform: ${OS}-${ARCH}"
        echo "Download manually from: https://github.com/ProducerGuy/claude-code-conversation-colors/releases"
        exit 1
        ;;
esac

echo "Installing Claude Code Conversation Colors..."
echo "Platform: ${OS} ${ARCH}"

# Download
TMPFILE="$(mktemp)"
curl -fsSL "https://github.com/${REPO}/releases/download/v1.0.0/${ASSET}" -o "${TMPFILE}"

# Install
if [ -w "${INSTALL_DIR}" ]; then
    mv "${TMPFILE}" "${INSTALL_DIR}/${BINARY_NAME}"
else
    sudo mv "${TMPFILE}" "${INSTALL_DIR}/${BINARY_NAME}"
fi
chmod +x "${INSTALL_DIR}/${BINARY_NAME}"

echo ""
echo "Installed! Run 'claude-colors' to pick your colors."
echo "After picking colors, open a new terminal tab and start Claude Code."
