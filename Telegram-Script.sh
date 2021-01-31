#!/bin/bash
##Telegram Son Sürüm İndirelim/Let's Download The Latest Version of Telegram
wget -O telegram.tar.xz "https://telegram.org/dl/desktop/linux"  --no-check-certificate
##Sıkıştırılmış Dosyayı Çıkaralım/Extract The Downloaded File
sudo tar -xf telegram.tar.xz
##Çıkan Dosyayı /opt Dizinine Taşıyalım/Move The Extracted File To The opt Folder
sudo mv -f Telegram /opt
##İndirilen Dosyayı Temizleyelim/Clear The Downloaded File
sudo rm -rf telegram.tar.xz
##Başlatıcı Yolu Eğer Oluşmamışsa Oluşturalım/Create The .desktop Files Folder If It Didn't Created Yet
mkdir -p ~/.local/share/applications/
##Başlatıcı Dosyamızı Oluşturalım/Create  The Launcher
touch ~/.local/share/applications/telegramdesktop.desktop
###Başlatıcımızın İçeriğini Yazalım/Write The Launcher's Content
echo "[Desktop Entry]
Version=1.0
Name=Telegram Desktop
Comment=Official desktop version of Telegram messaging app
TryExec=/opt/Telegram/Telegram
Exec=/opt/Telegram/Telegram -- %u
Icon=telegram
Terminal=false
StartupWMClass=TelegramDesktop
Type=Application
Categories=Chat;Network;InstantMessaging;Qt;
MimeType=x-scheme-handler/tg;
Keywords=tg;chat;im;messaging;messenger;sms;tdesktop;
X-GNOME-UsesNotifications=true" > ~/.local/share/applications/telegramdesktop.desktop
##Komutların Tamamlandı/Script Finished
echo Komutlar Tamamlandı/Script Finished
