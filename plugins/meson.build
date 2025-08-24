msgfmt_plugin_cmd = [
  find_program('msgfmt'),
  '--desktop',
  '--keyword=Name',
  '--keyword=Description',
  '--template=@INPUT@',
  '-d', join_paths(srcdir, 'po'),
  '--output=@OUTPUT@'
]

plugin_in = configuration_data()
plugin_in.set('VERSION', meson.project_version())

gpdefs_py = configuration_data()
gpdefs_py.set('GETTEXT_PACKAGE', meson.project_name())

foreach plugin_name : enabled_plugins
  subdir(plugin_name)
endforeach
