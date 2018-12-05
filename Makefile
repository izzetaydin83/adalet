all: install

install:

	mkdir -p  $(DESTDIR)/etc/skel/.java/
	@cp -rf data/java/.java $(DESTDIR)/etc/skel/.java
	@cp -rf data/java/.java.policy $(DESTDIR)/etc/skel/.java.policy 

	mkdir -p $(DESTDIR)/usr/share/pixmaps/
	@cp -rf data/images/uyap-editor-kisayol.png $(DESTDIR)/usr/share/pixmaps/
	@cp -rf data/images/akis.png $(DESTDIR)/usr/share/pixmaps/
	@cp -rf data/images/haberci.png $(DESTDIR)/usr/share/pixmaps/

	mkdir -p $(DESTDIR)/etc/firefox-esr/
	@cp -rf data/firefox/adalet.js $(DESTDIR)/etc/firefox-esr/

	mkdir -p $(DESTDIR)/usr/share/backgrounds/
	@cp -rf data/images/ADALET7.jpg $(DESTDIR)/usr/share/backgrounds/
	@cp -rf data/images/1920.jpg $(DESTDIR)/usr/share/backgrounds/

	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d/
	@cp -rf data/lightdm/60-adalet-uyap.conf $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d/


	mkdir -p  $(DESTDIR)/etc/skel/Masaüstü/
	mkdir -p  $(DESTDIR)/etc/skel/.config/
	mkdir -p  $(DESTDIR)/etc/skel/.config/Thunar/
	mkdir -p  $(DESTDIR)/etc/skel/.config/menus/
	mkdir -p  $(DESTDIR)/usr/share/desktop-directories/
	@cp -rf data/desktop/* $(DESTDIR)/etc/skel/Masaüstü/
	@cp -rf data/xfce4 $(DESTDIR)/etc/skel/.config/xfce4
	@cp -rf data/thunar/mimeapps.list $(DESTDIR)/etc/skel/.config/
	@cp -rf data/thunar/uca.xml $(DESTDIR)/etc/skel/.config/Thunar/  
	@cp -rf data/thunar/xfce-applications.menu $(DESTDIR)/etc/skel/.config/menus/ 
	@cp -rf data/thunar/uyap.directory $(DESTDIR)/usr/share/desktop-directories/
	
	mkdir -p  $(DESTDIR)/etc/skel/.local/share/applications/
	@cp -rf data/apps/* $(DESTDIR)/etc/skel/.local/share/applications/

	mkdir -p $(DESTDIR)/usr/lib/mozilla/plugins/
	@cp -rf data/firefox/libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so

	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/
	@cp -rf data/msttcorefonts $(DESTDIR)/usr/share/fonts/truetype/

	unopkg add -f --shared data/libre/oo-turkish-dict-v1-2.oxt

	mkdir -p $(DESTDIR)/etc/sysctl.d/
	@cp -rf data/dirty-vm.conf $(DESTDIR)/etc/sysctl.d/   
	@cp -rf data/uyarlama.sh $(DESTDIR)/usr/lib/
	@cp -rf data/varsayilana-don.sh $(DESTDIR)/usr/lib/


uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
