#!/bin/bash
##Telegram Son Sürüm İndirelim/Let's Download The Latest Version of Telegram
wget -O telegram.tar.xz "https://telegram.org/dl/desktop/linux"  --no-check-certificate
##Sıkıştırılmış Dosyayı Çıkaralım/Extract The Downloaded File
sudo tar -xf telegram.tar.xz
##Çıkan Dosyayı /opt Dizinine Taşıyalım/Move The Extracted File To The opt Folder
sudo mv Telegram /opt
##İndirilen Dosyayı Temizleyelim
sudo rm -rf telegram.tar.xz
##Komutların Tamamlandı/Commands Finished
echo Komutlar Tamamlandı Telegram çalıştırılacak
##Telegram çalıştırılabilir dosyasını açalım, bu sayede .desktop dosyası da ototmatik oluşacak
/opt/Telegram/Telegram
