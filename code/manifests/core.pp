class gfal2::core(
) inherits gfal2::params {
  #install gfal2-core
  package{'gfal2':
    ensure => 'present',
  }
  file{'/etc/gfal2.d':
      ensure  => 'directory',
      purge   => true,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      require => Package['gfal2'],
  }
  #conf
  file{'/etc/gfal2.d/gfal2_core.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('gfal2/gfal2_core.conf.erb'),
      require => Package['gfal2'],
  }

  #conf
  file{'/etc/gfal2.d/bdii.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('gfal2/bdii.conf.erb'),
      require => Package['gfal2'],
  }

  if $install_gfal2_util{
      package{'gfal2-util':
        ensure => 'present',
    }
  }

}
