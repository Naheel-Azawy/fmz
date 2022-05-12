PREFIX = /usr/local
BIN_PREFIX = $(DESTDIR)$(PREFIX)/bin
APP_PREFIX = $(DESTDIR)$(PREFIX)/share/applications/

install:
	mkdir -p $(BIN_PREFIX) $(APP_PREFIX)
	cp -f fmz $(BIN_PREFIX)
	cp -f fmz.desktop $(APP_PREFIX)
	update-desktop-database

uninstall:
	rm -f $(BIN_PREFIX)/fmz
	rm -f $(APP_PREFIX)/fmz.desktop

.PHONY: install uninstall
