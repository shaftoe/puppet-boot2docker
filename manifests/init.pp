# == Class: boot2docker
# Install boot2docker, docker, and initialize boot2docker vm

class boot2docker {

  if $::osfamily != 'Darwin' { fail('Works only on OSX') }

  boot2docker::download{'boot2docker':
    url => 'https://raw.github.com/boot2docker/boot2docker/master/boot2docker',
  } ->
  boot2docker::download{'docker':
    url => 'https://get.docker.io/builds/Darwin/x86_64/docker-latest',
  } ~>
  exec { 'initialize_boot2docker':
    command     => '/usr/local/bin/boot2docker init',
    refreshonly => true,
  } ~>
  exec { 'initialize_vm':
    command     => '/usr/local/bin/boot2docker up',
    refreshonly => true,
  }

}
