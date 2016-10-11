class gfal2::plugins::rfio::config(
) inherits gfal2::plugins::rfio::params {
  #install gfal2-plugin-rfio
  package{'gfal2-plugin-rfio':
    ensure => 'present',
  }
  #conf
  file{'/etc/gfal2.d/rfio_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/rfio_plugin.conf.erb'),
      require => Package['gfal2-plugin-rfio'],
  }
}
