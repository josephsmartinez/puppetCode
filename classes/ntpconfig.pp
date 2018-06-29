class ntpconfig {
  file {"/etc/ntp.conf":
    ensure => "present",
    content => "server pool.ntp.org\n"
  }
}

# Class declaration is needed to run the class
include ntpconfig
