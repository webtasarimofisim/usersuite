#!/bin/bash
clear
echo "==================================================="
echo "       Master Suite (User Edition) Kurulumu        "
echo "==================================================="
echo ""

TARGET_DIR="$HOME/.gemini/config/plugins/master-suite"
mkdir -p "$TARGET_DIR"

echo "[1/3] Sisteme baglaniliyor ve en guncel surum indiriliyor..."
curl -s -L -o usersuite_temp.zip "https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip"

echo "[2/3] Dosyalar sistem klasorune cikariliyor..."
unzip -q usersuite_temp.zip
cp -R usersuite-main/* "$TARGET_DIR/"

echo "[3/3] Gecici dosyalar temizleniyor..."
rm -rf usersuite-main usersuite_temp.zip

echo ""
echo "==================================================="
echo "KURULUM BASARIYLA TAMAMLANDI!"
echo "==================================================="
echo "Lutfen yapay zeka uygulamanizi (Antigravity) yeniden"
echo "baslatin ve sohbete /suite baslat yazin."
echo ""
