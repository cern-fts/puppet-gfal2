class gfal2::core(
) {
  #install gfal2-core
  package{'gfal2':
    ensure => 'present',
  }

  include gfal2::plugins::core_conf
}
