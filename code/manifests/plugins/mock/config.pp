class gfal2::plugins::mock::config(
) inherits gfal2::plugins::mock::params {
  #install gfal2-plugin-mock
  package{'gfal2-plugin-mock':
    ensure => 'present',
  }
  #conf
  file{'/etc/gfal2.d/mock_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/mock_plugin.conf.erb'),
      require => Package['gfal2-plugin-mock'],
  }
}
