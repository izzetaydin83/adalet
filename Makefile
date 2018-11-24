all: install

install:
	@cp -rf usr/lib/mozilla/plugins/libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/
uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
