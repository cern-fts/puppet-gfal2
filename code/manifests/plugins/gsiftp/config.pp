class gfal2::plugins::gsiftp::config(
) inherits gfal2::plugins::gsiftp::params {
  #install gfal2-plugin-gsiftp
  package{'gfal2-plugin-gridftp':
    ensure => $gfal2::params::version,
  }
  #conf
  file{'/etc/gfal2.d/gsiftp_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/gsiftp_plugin.conf.erb'),
      require => Package['gfal2-plugin-gridftp'],
  }
}
