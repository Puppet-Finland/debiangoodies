#
# == Class: debiangoodies::install
#
# Install debiangoodies
#
class debiangoodies::install {

    include debiangoodies::params

    package { 'debiangoodies':
        ensure => present,
        name => "${::debiangoodies::params::package_name}",
	}
}
