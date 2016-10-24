class gfal2::plugins::xrootd::config(
) inherits gfal2::plugins::xrootd::params {
  #install gfal2-plugin-xrootd
  package{'gfal2-plugin-xrootd':
    ensure => $gfal2::params::version,
  }
  #conf
  file{'/etc/gfal2.d/xrootd_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/xrootd_plugin.conf.erb'),
      require => Package['gfal2-plugin-xrootd'],
  }
}
