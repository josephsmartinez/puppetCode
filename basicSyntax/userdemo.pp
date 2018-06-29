#Makes a new user
user {"jmart545":
  ensure  => "present",
  uid     => "7777",
  shell   => "/bin/sh",
}
