#
# == Class: debiangoodies
#
# Install debiangoodies - a set of tools useful on the Debian platform.
#
# == Parameters
#
# None at the moment
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
    $status = 'present'
)
{

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_debiangoodies', 'true') != 'false' {

    if $::osfamily == 'Debian' {
        class { 'debiangoodies::install':
            status => $status,
        }
    }
}
}
