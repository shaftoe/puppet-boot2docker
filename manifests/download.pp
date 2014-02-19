# == Define: boot2docker::download
# Download provided $url in /usr/local/bin

define boot2docker::download ($url) {

  $bin = "/usr/local/bin/${name}"

  exec { "get_${name}":
    path    => '/usr/bin',
    command => "curl ${url} > ${bin}",
    creates => $bin,
  }

  file { $bin:
    ensure  => present,
    mode    => '0555',
    require => Exec["get_${name}"],
  }

}
