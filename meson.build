project('com.github.alvane', ['vala', 'c'],
    version : '',
    license: ''
)

gnome = import('gnome')
i18n = import('i18n')

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
  '-include', 'config.h',
  '-DGWEATHER_I_KNOW_THIS_IS_UNSTABLE',
]

subdir('data')
subdir('po')
subdir('src')

executable('com.github.alvane',
    sources,
    gresource,
    c_args: c_args,
    dependencies :[
        dependency('granite'),
        dependency('gobject-2.0'),
        dependency('gtk+-3.0'),
        dependency('glib-2.0')
    ],
    install : true
)

meson.add_install_script('meson/post_install.py')