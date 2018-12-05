#!/usr/bin/python3
# *-* charset: utf8 *-*
# İzzet AYDIN <izzet.aydin@pardus.org.tr>
import os
print("\033[91mDİKKAT.\033[0m\r\nBu işlem sistemdeki bazı ayarları geri alacaktır. Bilgisayarınız kapatılacak ve yeniden başlayacaktır, kaydetmediğiniz çalışmalarınızı kaybedebilirsiniz.\r\n\r\n")
secim = input("Devam etmek istiyor musunuz? (E/H):")
if secim != "e" and secim != "E":
        exit()
def xfcepanel_reset():
        mevcutuser = os.popen("whoami").read().rstrip()
        if mevcutuser:
                print("Kullanıcı adı: " + mevcutuser)
                os.system("rm -rf $HOME/.config/xfce4/panel/")
                os.system("rm -rf $HOME/.config/xfce4/xfconf/")
                os.system("cp -R /etc/skel/.config/xfce4/panel/ $HOME/.config/xfce4/")
                os.system("cp -R /etc/skel/.config/xfce4/xfconf/  $HOME/.config/xfce4/")
        else:
                print("Kullanıcı bilgisi alınırken bir sorun oluştu.")
xfcepanel_reset()
os.system("xfce4-session-logout -f -r")
