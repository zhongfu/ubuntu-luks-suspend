.PHONY: all install

INSTALL_DIR := /usr/local/lib/ubuntu-luks-suspend

all:

install:
	install -Dm755 ubuntu-luks-suspend "$(DESTDIR)$(INSTALL_DIR)/ubuntu-luks-suspend"
	install -Dm755 initramfs-suspend "$(DESTDIR)$(INSTALL_DIR)/initramfs-suspend"
	install -Dm755 hook-luks-suspend "$(DESTDIR)/etc/initramfs-tools/hooks/luks-suspend"
	install -Dm644 systemd-suspend.service "$(DESTDIR)/etc/systemd/system/systemd-suspend.service"

# vim:set sw=4 ts=4 noet:
