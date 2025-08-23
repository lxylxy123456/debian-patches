debian-patches
==============

Usage
-----

See branches in this repo. Also see commit messages.

Install dependencies for build (using libvte-2.91-0 as an example):

.. code:: bash

	sudo apt build-dep libvte-2.91-0

Build command:

.. code:: bash

	debuild -b -uc -us

Install command (using libvte-2.91-0 as an example):

.. code:: bash

	sudo apt install ../libvte-2.91-0_0.70.3-1_amd64.deb
	sudo apt-mark hold libvte-2.91-0

Contents
--------

gnome-terminal: enable transparent background
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From
https://aur.archlinux.org/cgit/aur.git/tree/transparency.patch?h=gnome-terminal-transparency

+--------+----------------------------+-----------------------+
| Debian | Branch                     | Diff                  |
+========+============================+=======================+
|   13   | `gnome-terminal_3.56.2-2`_ | `5e7982a1..d7134765`_ |
+--------+----------------------------+-----------------------+
|   12   | `gnome-terminal-3.46.8`_   | `28fb800d..fe3cbdd8`_ |
+--------+----------------------------+-----------------------+

.. _gnome-terminal_3.56.2-2: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal_3.56.2-2
.. _5e7982a1..d7134765: https://github.com/lxylxy123456/debian-patches/compare/5e7982a15a01d4d8557de3b644b76f161c806ce4..d7134765c43dee1fa7d5344adbc5e5073c711d98
.. _gnome-terminal-3.46.8: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal-3.46.8
.. _28fb800d..fe3cbdd8: https://github.com/lxylxy123456/debian-patches/compare/28fb800de968a8c382506f845557aeed1660a4cf..fe3cbdd84933e7341b8d00ac1cba664d37850ab2

libvte-2.91: fix line height problem
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Thanks to https://gitlab.gnome.org/GNOME/vte/-/issues/347#note_1197315

+--------+-----------------------------------+-----------------------+
| Debian | Branch                            | Diff                  |
+========+===================================+=======================+
|   13   | `libvte-2.91-0_0.80.1-1`_         | `ad7b8b26..8482f4cc`_ |
+--------+-----------------------------------+-----------------------+
|   12   | `libvte-2.91-0_0.70.6-2_deb12u1`_ | `be7e8775..bbd0faaf`_ |
|        +-----------------------------------+-----------------------+
|        | `vte2.91-0.70.6`_                 | `4993fe32..4b71d300`_ |
|        +-----------------------------------+-----------------------+
|        | `vte2.91-0.70.3`_                 | `1b499c9f..53248a69`_ |
+--------+-----------------------------------+-----------------------+

.. _libvte-2.91-0_0.80.1-1: https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.80.1-1
.. _ad7b8b26..8482f4cc: https://github.com/lxylxy123456/debian-patches/compare/ad7b8b26cff490c8322fc9a37fa5f252d6233982..8482f4cc69f79656c8e6f213ab068123d615d372
.. _libvte-2.91-0_0.70.6-2_deb12u1: https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.70.6-2_deb12u1
.. _be7e8775..bbd0faaf: https://github.com/lxylxy123456/debian-patches/compare/be7e8775af11c352a5a408b949885b6490b79c79..bbd0faaf3c8317c46be1e058fc69317de4070a2c
.. _vte2.91-0.70.6: https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.6
.. _4993fe32..4b71d300: https://github.com/lxylxy123456/debian-patches/compare/4993fe32fe4e4d3c2d4e313a1c9e3c02b241eaae..4b71d300f504d8bc3d41803e8626f98217df5764
.. _vte2.91-0.70.3: https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.3
.. _1b499c9f..53248a69: https://github.com/lxylxy123456/debian-patches/compare/1b499c9fe60bb30f1dfd5ab5a12b5b297ce22866..53248a69677d05d7600d61ccaabaeebe610eea50


libdrumstick: change keys' shape
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+--------+--------------------------+----------+--------------------------+-----------------------+
| Debian | Package                  | Version  | Branch                   | Diff                  |
+========+==========================+==========+==========================+=======================+
|   13   | libdrumstick-widgets2t64 | 2.10.0-1 | `libdrumstick_2.10.0-1`_ | `bf552448..1d038c11`_ |
+--------+--------------------------+----------+--------------------------+-----------------------+
|   12   | libdrumstick-widgets2    | 2.7.2-1  | `libdrumstick_2.7.2-1`_  | `0ae70fc5..e0497cde`_ |
+--------+--------------------------+----------+--------------------------+-----------------------+

.. _libdrumstick_2.10.0-1: https://github.com/lxylxy123456/debian-patches/tree/libdrumstick_2.10.0-1
.. _bf552448..1d038c11: https://github.com/lxylxy123456/debian-patches/compare/bf552448a69f98034f5a26a8afdc95594baeb451..1d038c11c7769e81db31ba59956a9b615f29ff67
.. _libdrumstick_2.7.2-1: https://github.com/lxylxy123456/debian-patches/tree/libdrumstick_2.7.2-1
.. _0ae70fc5..e0497cde: https://github.com/lxylxy123456/debian-patches/compare/0ae70fc518ab945509f74216379ad819d2f9870f..e0497cde2b5694f669c5fe837d811fbc31b8c605

