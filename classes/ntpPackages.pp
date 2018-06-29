#Definition of a # == Class: ntpdemo
class ntpdemo {
  # Installing NTP Package
  package {"ntp":
    ensure => "present",
  }
  # configuring NTP configuration file
  file { "/etc/ntp.conf":
    ensure => "present",
    content => "server 0.centos.pool.ntp.org iburst\n",
  }
  # Starting NTP services
  service { "ntpd":
    ensure => "running",
  }
}

# The class name must be declared inorder to compile at runtime
include ntpdemo
