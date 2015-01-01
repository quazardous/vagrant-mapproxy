class mapproxy {
  require pypip
  package { 'proj': ensure => installed }
  package { 'freetype-devel': ensure => installed }
  package { 'zlib-devel': ensure => installed }
  package { 'turbojpeg-devel': ensure => installed }
  package { 'geos-devel': ensure => installed }
  exec { "Pillow":
    command => "pip install Pillow",
    path => ["/bin", "/usr/bin"],
    require => Package['proj', 'freetype-devel', 'zlib-devel', 'turbojpeg-devel', 'geos-devel'],
  }
  exec { "PyYAML":
    command => "pip install Pillow",
    path => ["/bin", "/usr/bin"],
  }
  exec { "Cython":
    command => "pip install cython",
    path => ["/bin", "/usr/bin"],
  }
  exec { "Shapely":
    command => "pip install Shapely",
    path => ["/bin", "/usr/bin"],
  }
  exec { "MapProxy":
    command => "pip install MapProxy",
    path => ["/bin", "/usr/bin"],
    require => Exec['Pillow', 'PyYAML', 'Cython', 'Shapely'],
  }
}
