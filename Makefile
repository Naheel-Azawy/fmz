PREFIX = /usr/bin/
APP_PREFIX = /usr/share/applications/

install:
	mkdir -p $(DESTDIR)$(PREFIX)
	cp -f fmz $(DESTDIR)$(PREFIX)
	cp -f fmz.desktop $(DESTDIR)$(APP_PREFIX)
	update-desktop-database

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/fmz
	rm -f $(DESTDIR)$(APP_PREFIX)/fmz.desktop
