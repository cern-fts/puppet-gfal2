class gfal2::plugins::srm::config(
) inherits gfal2::plugins::srm::params {
  #install gfal2-plugin-srm
  package{'gfal2-plugin-srm':
    ensure => 'present',
  }
  #conf
  file{'/etc/gfal2.d/srm_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/srm_plugin.conf.erb'),
      require => Package['gfal2-plugin-srm'],
  }
}
