all: install

install:
	@cp -rf libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
