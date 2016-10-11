class gfal2::plugins::http::config(
) inherits gfal2::plugins::http::params {
  #install gfal2-plugin-http
  package{'gfal2-plugin-http':
    ensure => 'present',
  }
  #conf
  file{'/etc/gfal2.d/http_plugin.conf':
      owner   => "root",
      group   => "root",
      mode    => '0644',
      content => template('gfal2/plugins/http_plugin.conf.erb'),
      require => Package['gfal2-plugin-http'],
  }
}
