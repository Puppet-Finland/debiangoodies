#
# == Class: debiangoodies::params
#
# Defines some variables based on the operating system
#
class debiangoodies::params {

    case $::osfamily {
        'Debian': {
            $package_name = 'debian-goodies'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }
}
