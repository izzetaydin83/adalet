all: install

install:
	mkdir -p $(DESTDIR)/usr/lib/mozilla/plugins/
	@cp -rf data/libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/
	@cp -rf data/msttcorefonts $(DESTDIR)/usr/share/fonts/truetype/
	mkdir -p  $(DESTDIR)/etc/skel/.java
	@cp -rf data/_.java $(DESTDIR)/etc/skel/.java
	@cp -rf data/_.java.policy $(DESTDIR)/etc/skel/.java.policy 
uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
