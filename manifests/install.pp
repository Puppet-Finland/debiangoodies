#
# == Class: debiangoodies::install
#
# Install debiangoodies
#
class debiangoodies::install
(
    $status
)
{

    include debiangoodies::params

    package { 'debiangoodies':
        ensure => $status,
        name => "${::debiangoodies::params::package_name}",
	}
}
