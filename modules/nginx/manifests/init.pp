class nginx {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-enabled/default':
    source => 'puppet:///modules/nginx/bogo.conf',
    notify => Service['nginx'],
  }
}
