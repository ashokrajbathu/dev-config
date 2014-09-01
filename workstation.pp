package { "git":
ensure=>"present",
}

package { "python-virtualenv":
ensure=>"present",
}

package { "python-pip":
ensure=>"present",
}

vcsrepo { "/opt/lunar-cloud":
  ensure => present,
  provider => git,
  source => 'https://github.com/WebSoc/lunar-cloud.git',
  revision => 'master'
}

file { "/opt/lunar-cloud":
  ensure => directory,
  recurse => true,
  owner => "root",
  group => "root",
  mode => 0666,
}

