# Sample ordering packages, files, and services
# Lang: Puppet, Ruby, Java
# Package: nginx

package {'nginx':
  ensure     => installed,
  before     => Service["nginx"],
}

file { 'nginx.conf':
  ensure     => file,
  mode       => '0644',
  notify     => Service["nginx"],
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  required   => [Package["nginx"], File["nginx.conf"]],
  subscribe  => File["nginx.conf"],
  # pattern => 'nginx',
}

# Order notation ie Short hand version of the above
Package["nginx"] -> File["nginx.conf"] ~> Service["nginx"]

# or
Package["nginx"] ->
File["nginx.conf"] ~>
Service["nginx"]
