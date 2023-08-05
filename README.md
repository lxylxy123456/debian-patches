# debian-patches

See branches in this repo. Also see commit messages.

Build command:
```sh
debuild -b -uc -us
```

Install command (using libvte-2.91-0 as an example):
```
sudo apt install ../libvte-2.91-0_0.70.3-1_amd64.deb
sudo apt-mark hold libvte-2.91-0
```

## gnome-terminal: enable transparent background

* [`gnome-terminal-3.46.8`](https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal-3.46.8)

## libvte-2.91: fix line height problem

* [`vte2.91-0.70.3`](https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.3)
* [`vte2.91-0.70.6`](https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.6)

