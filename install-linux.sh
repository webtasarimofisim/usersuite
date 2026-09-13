#!/bin/bash
clear
echo "==================================================="
echo "  Master Suite Universal Installation (All AIs)   "
echo "==================================================="
echo ""
echo "[1/3] En guncel surum indiriliyor..."
curl -s -L -o usersuite_temp.zip "https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip"
echo "[2/3] Extracting files..."
unzip -q usersuite_temp.zip

echo "[3/3] Installing to appropriate AI environments..."
DIRS=(
    "$HOME/.gemini/config/plugins/master-suite"
    "$HOME/.codex/plugins/master-suite"
    "$HOME/.claude/extensions/master-suite"
    "$HOME/.opencode/plugins/master-suite"
)

for DIR in "${DIRS[@]}"; do
    mkdir -p "$DIR"
    cp -R usersuite-main/* "$DIR/"
    echo "-> Installed to: $DIR"
done

rm -rf usersuite-main usersuite_temp.zip
echo ""
echo "==================================================="
echo "INSTALLATION COMPLETED SUCCESSFULLY!"
echo "==================================================="
