#Puppet does not allow declaring the same resource twice

#Puppet resource
<Resoure Type> { <Title>:
  <Attribute> => <Value>,
  <Attribute> => <Value>,
  <Attribute> => <Value>,
  <Attribute> => <Value>
}


#NTP file configuration
file { "/etc/ntp.conf":
  ensure => "present",
  content => "server pool.ntp.org\n",
}
