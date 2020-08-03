#!/bin/bash
##Telegram Son Sürüm İndirelim/Let's Download The Latest Version of Telegram
wget -O telegram.tar.bz2 "https://telegram.org/dl/desktop/linux"  --no-check-certificate
##Sıkıştırılmış Dosyayı Çıkaralım/Extract The Downloaded File
sudo tar xjf telegram.tar.bz2
##Çıkan Dosyayı /opt Dizinine Taşıyalım/Move The Extracted File To The opt Folder
sudo mv Telegram /opt
##Başlatıcı Yolu Eğer Oluşmamışsa Oluşturalım/Create The .desktop Files Folder If It Didn't Created Yet
mkdir -p ~/.local/share/applications
##Başlatıcıyı Oluşturalım/Create The Launcher
echo "
[Desktop Entry]
Version=1.0
Name=Telegram Desktop
Comment=Official desktop version of Telegram messaging app
Comment[tr]=Telegram uygulamasının resmi masaüstü sürümü
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
##Başlatıcıya Çalıştırılabilir Yetkisi Verelim/Give The Executable Permission
chmod 755 ~/.local/share/applications/telegramdesktop.desktop
##İndirilen Dosyayı Temizleyelim
sudo rm -rf telegram.tar.bz2
##Komutların Tamamlandı/Commands Finished
echo Komutlar Tamamlandı Uçbirim Çıktısını Kontrol Edin
