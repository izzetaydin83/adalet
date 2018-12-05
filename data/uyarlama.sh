awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd > /opt/uid.txt
USR="$(cat /opt/uid.txt)"
rm /opt/uid.txt


rm -rf /home/$USR/.java
cp -rf /etc/skel/.java /home/$USR/.java
cp -rf /etc/skel/.java.policy /home/$USR/.java.policy

rm -rf /home/$USR/.config/xfce4/
cp -rf /etc/skel/.config/xfce4	 /home/$USR/.config/
cp -rf /etc/skel/.config/mimeapps.list /home/$USR/.config/
cp -rf /etc/skel/Masaüstü/*.desktop /home/$USR/Masaüstü/

rm -rf /home/$USR/.purple
cp -rf /etc/skel/.purple /home/$USR/.purple
cp -rf   /etc/skel/.config/Thunar/uca.xml /home/$USR/.config/Thunar

rm -rf /home/$USR/.config/menus/
mkdir -p /home/$USR/.config/menus/
cp -rf /etc/skel/.config/menus/xfce-applications.menu /home/$USR/.config/menus/

mkdir -p /home/$USR/.local/share/applications/
cp -rf /etc/skel/.local/share/applications/*.desktop /home/$USR/.local/share/applications

chmod -R 755 /etc/skel/.config/xfce4
chown -R $USR:$USR /home/$USR/

