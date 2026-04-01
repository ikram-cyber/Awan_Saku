#!/data/data/com.termux/files/usr/bin/bash

# Logo ImperiumSakti
echo -e "\e[1;32m"
echo "  ___                               _                     ____        _   _   _ "
echo " |_ _|_ __ ___  _ __   ___ _ __ _ _(_)_   _ _ __ ___     / ___|  __ _| |_| |_(_) "
echo "  | || '_ \` _ \| '_ \ / _ \ '__| | | | | | | '_ \` _ \    \___ \ / _\` | __| __| | "
echo "  | || | | | | | |_) |  __/ |  | |_| | |_| | | | | | |    ___) | (_| | |_| |_| | "
echo " |___|_| |_| |_| .__/ \___|_|   \__,_|\__,_|_| |_| |_|   |____/ \__,_|\__|\__|_| "
echo "               |_|                                                               "
echo -e "\e[0m"
echo -e "\e[1;34m[+] Memulai Instalasi SakaServer Gen-1...\e[0m"

# Update & Install Tools Utama
pkg update && pkg upgrade -y
pkg install python git wget -y

# Setup Folder Server
mkdir -p ~/SakaServer
cd ~/SakaServer

# Buat file index standar untuk pembeli
cat <<EOF > index.html
<!DOCTYPE html>
<html>
<head><title>SakaServer Gen-1 Active</title></head>
<body style="background:#000; color:#00ff00; text-align:center; font-family:sans-serif; padding-top:50px;">
    <h1>🔱 SakaServer Gen-1 Aktif 🔱</h1>
    <p>Selamat! Server mandiri Anda telah berjalan sukses.</p>
    <p>Dikelola oleh: ImperiumSakti Tech</p>
</body>
</html>
EOF

# Download Bore (Tunneling Global)
echo -e "\e[1;34m[+] Mengunduh Engine Tunneling (Bore)...\e[0m"
wget https://github.com/ekzhang/bore/releases/download/v0.5.1/bore-v0.5.1-x86_64-unknown-linux-musl.tar.gz
tar -xf bore-v0.5.1-x86_64-unknown-linux-musl.tar.gz
rm bore-v0.5.1-x86_64-unknown-linux-musl.tar.gz

echo -e "\e[1;32m[!] INSTALASI SELESAI, BOS!\e[0m"
echo -e "\e[1;33mCara Pakai:\e[0m"
echo "1. Jalankan Server: python -m http.server 8000"
echo "2. Agar Online: ./bore local 8000 --to bore.pub"
