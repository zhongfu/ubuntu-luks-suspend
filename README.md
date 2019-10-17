ubuntu-luks-suspend
====================

A script for [Ubuntu][] to lock the encrypted root volume on suspend.

When using [dm-crypt with LUKS][] to set up full system encryption, the
encryption key is kept in memory when suspending the system. This drawback
defeats the purpose of encryption if you carry around your suspended laptop
a lot. One can use the `cryptsetup luksSuspend` command to freeze all I/O and
flush the key from memory, but special care must be taken when applying it to
the root device.

The `ubuntu-linux-suspend` script replaces the default suspend mechanism of
systemd. It extracts the initramfs to RAM and changes root to it in order to
perform the `luksSuspend`, actual suspend, and `luksResume` operations.

[Ubuntu]: https://www.ubuntu.com/
[dm-crypt with LUKS]: https://wiki.archlinux.org/index.php/Dm-crypt_with_LUKS


Installation
-------------

1. Clone this repository:  
   `git clone https://github.com/samuel-w/ubuntu-luks-suspend`
2. Install the scripts:  
   `sudo make install`
3. Rebuild the initramfs:  
   `sudo update-initramfs -u`
4. Reboot.

Uninstallation
---------------
1. Uninstall the scripts:  
   `sudo make uninstall`
2. Rebuild the initramfs:  
   `sudo update-initramfs -u`
3. Reboot.

Author and license
-------------------

Copyright 2013 Vianney le Clément de Saint-Marcq <vleclement@gmail.com>  
Copyright 2017 Zhongfu Li <me@zhongfu.li>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with This program.  If not, see <http://www.gnu.org/licenses/>.
