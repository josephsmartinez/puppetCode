file {"/var/tmp/testfile"
  ensure  => "present",
  ower    => "jmart545",
  group   => "jmart545",
  mode    => "0777",
  content => "The is testing code using Puppet and Ruby"
}
