# debian-patches

See branches in this repo. Also see commit messages.

Install dependencies for build (using libvte-2.91-0 as an example):
```sh
sudo apt build-dep libvte-2.91-0
```

Build command:
```sh
debuild -b -uc -us
```

Install command (using libvte-2.91-0 as an example):
```sh
sudo apt install ../libvte-2.91-0_0.70.3-1_amd64.deb
sudo apt-mark hold libvte-2.91-0
```

## gnome-terminal: enable transparent background

* [`gnome-terminal-3.46.8`](https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal-3.46.8)

## libvte-2.91: fix line height problem

* [`vte2.91-0.70.3`](https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.3)
* [`vte2.91-0.70.6`](https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.6)
* [`libvte-2.91-0_0.70.6-2_deb12u1`](https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.70.6-2_deb12u1)
* [`libvte-2.91-0_0.80.1-1`](https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.80.1-1)

