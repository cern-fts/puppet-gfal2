class gfal2::plugins::lfc::config(
) inherits gfal2::plugins::lfc::params {
  #install gfal2-plugin-lfc
  package{'gfal2-plugin-lfc':
    ensure => $gfal2::params::version,
  }
  #conf
  file{'/etc/gfal2.d/lfc_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/lfc_plugin.conf.erb'),
      require => Package['gfal2-plugin-lfc'],
  }
}
