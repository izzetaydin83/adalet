all: install

install:
	mkdir -p $(DESTDIR)/usr/lib/mozilla/plugins/
	@cp -rf data/libflashplayer.so $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
uninstall:
	@rm -rf $(DESTDIR)/usr/lib/mozilla/plugins/libflashplayer.so
.PHONY: install uninstall
