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

+--------+----------------------------+
| Debian | Branch                     |
+========+============================+
|   12   | `gnome-terminal-3.46.8`_   |
+--------+----------------------------+
|   13   | `gnome-terminal_3.56.2-2`_ |
+--------+----------------------------+

.. _gnome-terminal-3.46.8: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal-3.46.8
.. _gnome-terminal_3.56.2-2: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal_3.56.2-2

libvte-2.91: fix line height problem
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+--------+-----------------------------------+
| Debian | Branch                            |
+========+===================================+
|   12   | `vte2.91-0.70.3`_                 |
|        +-----------------------------------+
|        | `vte2.91-0.70.6`_                 |
|        +-----------------------------------+
|        | `libvte-2.91-0_0.70.6-2_deb12u1`_ |
+--------+-----------------------------------+
|   13   | `libvte-2.91-0_0.80.1-1`_         |
+--------+-----------------------------------+

.. _vte2.91-0.70.3: https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.3
.. _vte2.91-0.70.6: https://github.com/lxylxy123456/debian-patches/tree/vte2.91-0.70.6
.. _libvte-2.91-0_0.70.6-2_deb12u1: https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.70.6-2_deb12u1
.. _libvte-2.91-0_0.80.1-1: https://github.com/lxylxy123456/debian-patches/tree/libvte-2.91-0_0.80.1-1

