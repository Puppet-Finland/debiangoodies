#
# == Class: debiangoodies
#
# Install debiangoodies - a set of tools useful on the Debian platform.
#
# == Parameters
#
# [*manage*]
#  Whether to manage debiangoodies with Puppet or not. Valid values are 'yes' 
#  (default) and 'no'.
#
# == Examples
#
#   include debiangoodies
#
# == Authors
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class debiangoodies
(
    $manage = 'yes',
    $ensure = 'present'
)
{

if $manage == 'yes' {

    if $::osfamily == 'Debian' {
        class { '::debiangoodies::install':
            ensure => $ensure,
        }
    }
}
}
