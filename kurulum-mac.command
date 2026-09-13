#!/bin/bash
clear
echo "==================================================="
echo "  Master Suite Kurulumu (Tum Yapay Zekalar Icin)   "
echo "==================================================="
echo ""
echo "[1/3] En guncel surum indiriliyor..."
curl -s -L -o usersuite_temp.zip "https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip"
echo "[2/3] Dosyalar cikariliyor..."
unzip -q usersuite_temp.zip

echo "[3/3] Uygun AI ortamlarina kurulum yapiliyor..."
DIRS=(
    "$HOME/.gemini/config/plugins/master-suite"
    "$HOME/.codex/plugins/master-suite"
    "$HOME/.claude/extensions/master-suite"
    "$HOME/.opencode/plugins/master-suite"
)

for DIR in "${DIRS[@]}"; do
    mkdir -p "$DIR"
    cp -R usersuite-main/* "$DIR/"
    echo "-> Kuruldu: $DIR"
done

rm -rf usersuite-main usersuite_temp.zip
echo ""
echo "==================================================="
echo "KURULUM BASARIYLA TAMAMLANDI!"
echo "==================================================="
