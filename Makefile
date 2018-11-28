all: install

install:
	mkdir -p $(DESTDIR)/etc/xdg/autostart/
	@cp data/conky/conky.desktop  $(DESTDIR)/etc/xdg/autostart
	mkdir -p $(DESTDIR)/etc/conky/
	@cp data/conky/uyap.conf $(DESTDIR)/etc/conky/

	mkdir -p  $(DESTDIR)/etc/skel/.java/
	mkdir -p  $(DESTDIR)/etc/skel/Masaüstü/
	@cp -rf data/desktop/* $(DESTDIR)/etc/skel/Masaüstü/
	@cp -rf data/java/_.java $(DESTDIR)/etc/skel/.java
	@cp -rf data/java/_.java.policy $(DESTDIR)/etc/skel/.java.policy 

	mkdir -p $(DESTDIR)/usr/lib/mozilla/plugins/
	@cp -rf data/firefox/libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
	mkdir -p $(DESTDIR)/etc/firefox-esr/
	@cp -rf data/firefox/adalet.js $(DESTDIR)/etc/firefox-esr/

	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/
	@cp -rf data/msttcorefonts $(DESTDIR)/usr/share/fonts/truetype/

	unopkg add -f --shared data/libre/oo-turkish-dict-v1-2.oxt

	@cp -rf data/uyarlama.sh $(DESTDIR)

uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
