class gfal2::plugins::dcap::config(
) inherits gfal2::plugins::dcap::params {
  #install gfal2-core
  package{'gfal2-plugin-dcap':
    ensure => $gfal2::params::version,
  }
  #conf
  file{'/etc/gfal2.d/dcap_plugin.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('gfal2/plugins/dcap_plugin.conf.erb'),
      require => Package['gfal2-plugin-dcap'],
  }
}
