awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd > /opt/uid.txt
USR="$(cat /opt/uid.txt)"
rm /opt/uid.txt

cp -r /etc/skel/.java /home/$USR/.java
cp -r /etc/skel/_.java.policy /home/$USR/.java.policy
rm -rf /home/$USR/.config/xfce4/
cp -r /etc/skel/Masaüstü/*.desktop /home/$USR/Masaüstü/
chown -R $USR:$USR /home/$USR/

