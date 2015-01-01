class pypip {
  package { 'python': ensure => installed }
  package { 'python-devel': ensure => installed }
  package { 'python-pip': ensure => installed }
}
