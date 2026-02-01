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

	# Naming: <package>_<version>_<architecture>.deb
	sudo apt install ../libvte-2.91-0_0.70.3-1_amd64.deb
	sudo apt-mark hold libvte-2.91-0

Contents
--------

gnome-terminal: enable transparent background
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From
https://aur.archlinux.org/cgit/aur.git/tree/transparency.patch?h=gnome-terminal-transparency

+--------+----------------+----------+----------------------------+-----------------------+
| Debian | Package        | Version  | Branch                     | Diff                  |
+========+================+==========+============================+=======================+
|   13   | gnome-terminal | 3.56.2-2 | `gnome-terminal_3.56.2-2`_ | `5e7982a1..d7134765`_ |
+--------+                +----------+----------------------------+-----------------------+
|   12   |                | 3.46.8   | `gnome-terminal-3.46.8`_   | `28fb800d..fe3cbdd8`_ |
+--------+----------------+----------+----------------------------+-----------------------+

.. _gnome-terminal_3.56.2-2: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal_3.56.2-2
.. _5e7982a1..d7134765: https://github.com/lxylxy123456/debian-patches/compare/5e7982a15a01d4d8557de3b644b76f161c806ce4..d7134765c43dee1fa7d5344adbc5e5073c711d98
.. _gnome-terminal-3.46.8: https://github.com/lxylxy123456/debian-patches/tree/gnome-terminal-3.46.8
.. _28fb800d..fe3cbdd8: https://github.com/lxylxy123456/debian-patches/compare/28fb800de968a8c382506f845557aeed1660a4cf..fe3cbdd84933e7341b8d00ac1cba664d37850ab2

libvte-2.91-0: fix line height problem
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Thanks to https://gitlab.gnome.org/GNOME/vte/-/issues/347#note_1197315

+--------+---------------+------------------+-----------------------------------+-----------------------+
| Debian | Package       | Version          | Branch                            | Diff                  |
+========+===============+==================+===================================+=======================+
|   13   | libvte-2.91-0 | 0.80.1-1         | `libvte-2.91-0_0.80.1-1`_         | `ad7b8b26..8482f4cc`_ |
+--------+               +------------------+-----------------------------------+-----------------------+
|   12   |               | 0.70.6-2~deb12u1 | `libvte-2.91-0_0.70.6-2_deb12u1`_ | `be7e8775..bbd0faaf`_ |
|        |               +------------------+-----------------------------------+-----------------------+
|        |               | 0.70.6           | `vte2.91-0.70.6`_                 | `4993fe32..4b71d300`_ |
|        |               +------------------+-----------------------------------+-----------------------+
|        |               | 0.70.3           | `vte2.91-0.70.3`_                 | `1b499c9f..53248a69`_ |
+--------+---------------+------------------+-----------------------------------+-----------------------+

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

gedit-plugin-git: maintain gedit's Git plugin
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See also https://github.com/lxylxy123456/gedit-plugin-git

+--------+------------------+---------+----------------------------+-------------+
| Debian | Package          | Version | Branch                     | Commit      |
+========+==================+=========+============================+=============+
|   13   | gedit-plugin-git | 48.1-2  | `gedit-plugin-git_48.1-2`_ | `75aeb537`_ |
+--------+------------------+---------+----------------------------+-------------+

.. _gedit-plugin-git_48.1-2: https://github.com/lxylxy123456/debian-patches/tree/gedit-plugin-git_48.1-2
.. _75aeb537: https://github.com/lxylxy123456/debian-patches/commit/75aeb537775561bf355572e27ec1d639ba70366a

libmutter-16-0: implement touch move mouse in Wayland, etc.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Implement touch move mouse in Wayland (demo: https://www.youtube.com/shorts/8iK9Uqn2SsQ)
* Implement activate gedit on Wayland

+--------+----------------+----------------+----------------------------------+-----------------------+
| Debian | Package        | Version        | Branch                           | Diff                  |
+========+================+================+==================================+=======================+
|   13   | libmutter-16-0 | 48.7-0+deb13u1 | `libmutter-16-0_48.7-0_deb13u1`_ | `cee3c2f1..e28b138b`_ |
|        |                +----------------+----------------------------------+-----------------------+
|        |                | 48.4-2         | `libmutter-16-0_48.4-2`_         | `1af84d54..76cc6bc6`_ |
+--------+----------------+----------------+----------------------------------+-----------------------+

.. _libmutter-16-0_48.7-0_deb13u1: https://github.com/lxylxy123456/debian-patches/tree/libmutter-16-0_48.7-0_deb13u1
.. _cee3c2f1..e28b138b: https://github.com/lxylxy123456/debian-patches/compare/cee3c2f1c9fce62a57651deb10128732b3e2c589..e28b138b31f6baf182a57646c1b40998116fa33e
.. _libmutter-16-0_48.4-2: https://github.com/lxylxy123456/debian-patches/tree/libmutter-16-0_48.4-2
.. _1af84d54..76cc6bc6: https://github.com/lxylxy123456/debian-patches/compare/1af84d543e05dcfb174edfacb462db7c4d12a0b8..76cc6bc6318588db1a8635d40b34f32119d518bc

qt6-wayland: fix bug of multi-touch does not release
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Bug report: https://qt-project.atlassian.net/browse/QTBUG-143205 (`old version`_)

.. _old version: https://gist.github.com/lxylxy123456/7a6b36419831c2479d2d59a6efe6949d

Demo: https://youtube.com/shorts/U-gIEVWHG-U

+--------+----------------------+---------+------------------------+-----------------------+
| Debian | Package              | Version | Branch                 | Diff                  |
+========+======================+=========+========================+=======================+
|   13   | libqt6waylandclient6 | 6.8.2-4 | `qt6-wayland_6.8.2-4`_ | `ec6ecd65..af493274`_ |
+--------+----------------------+---------+------------------------+-----------------------+

.. _qt6-wayland_6.8.2-4: https://github.com/lxylxy123456/debian-patches/tree/qt6-wayland_6.8.2-4
.. _ec6ecd65..af493274: https://github.com/lxylxy123456/debian-patches/compare/ec6ecd65103cd5fec42b638bf152978e29f552f3..af4932749c92dfbe160a0bb8d10b47bfee1669b8

libgedit-gtksourceview-300-3: fix highlighting problems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Backport work by Christian Hergert and Роман Донченко, fix yaml highlighting:
  https://gitlab.gnome.org/World/gedit/libgedit-gtksourceview/-/merge_requests/1
* Backport work by Ole Christian Eidheim, fix markdown highlighting:
  https://gitlab.gnome.org/World/gedit/libgedit-gtksourceview/-/merge_requests/2

+--------+-----------------------------------+-----------+-------------------------------------------+-----------------------+
| Debian | Package                           | Version   | Branch                                    | Diff                  |
+========+===================================+===========+===========================================+=======================+
|   13   | libgedit-gtksourceview-300-common | 299.5.0-1 | `libgedit-gtksourceview-300-3_299.5.0-1`_ | `e8753402..df33b810`_ |
+--------+-----------------------------------+-----------+-------------------------------------------+-----------------------+

.. _libgedit-gtksourceview-300-3_299.5.0-1: https://github.com/lxylxy123456/debian-patches/tree/libgedit-gtksourceview-300-3_299.5.0-1
.. _e8753402..df33b810: https://github.com/lxylxy123456/debian-patches/compare/e8753402fe37b84e1faf1ade06198f2385736786..df33b8101be585eed2337905c38f5d7975714160

libgtk-3-0t64: fix touch screen support EventBox
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Bug report: https://gitlab.gnome.org/GNOME/gtk/-/issues/8008

See also: https://github.com/lxylxy123456/2026-gedit-documents-panel-bug-fixing-challenge/

+--------+---------------+-----------+----------------------------+-----------------------+
| Debian | Package       | Version   | Branch                     | Diff                  |
+========+===============+===========+============================+=======================+
|   13   | libgtk-3-0t64 | 3.24.49-3 | `libgtk-3-0t64_3.24.49-3`_ | `8a4e3600..5a225c6a`_ |
+--------+---------------+-----------+----------------------------+-----------------------+

.. _libgtk-3-0t64_3.24.49-3: https://github.com/lxylxy123456/debian-patches/tree/libgtk-3-0t64_3.24.49-3
.. _8a4e3600..5a225c6a: https://github.com/lxylxy123456/debian-patches/compare/8a4e3600d770e5fd93fe8d8b08badbd0e82c08eb..5a225c6ac3b518bfa9ddf5c4e12bb4f13feb95c5

gedit: fix touch screen support for documents panel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See also: https://github.com/lxylxy123456/2026-gedit-documents-panel-bug-fixing-challenge/

+--------+---------+---------+-----------------+-----------------------+
| Debian | Package | Version | Branch          | Diff                  |
+========+=========+=========+=================+=======================+
|   13   | gedit   | 48.1-4  | `gedit_48.1-4`_ | `a690205d..2f90e103`_ |
+--------+---------+---------+-----------------+-----------------------+

.. _gedit_48.1-4: https://github.com/lxylxy123456/debian-patches/tree/gedit_48.1-4
.. _a690205d..2f90e103: https://github.com/lxylxy123456/debian-patches/compare/a690205d1b6da17a5b3e61dc2f6cee573dff6a10..2f90e10332bbfcf70b7a0f2122769cd2fed3f3d7

