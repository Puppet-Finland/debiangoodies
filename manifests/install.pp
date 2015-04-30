#
# == Class: debiangoodies::install
#
# Install debiangoodies
#
class debiangoodies::install
(
    $ensure
)
{

    include ::debiangoodies::params

    package { 'debiangoodies':
        ensure => $ensure,
        name   => $::debiangoodies::params::package_name,
  }
}
