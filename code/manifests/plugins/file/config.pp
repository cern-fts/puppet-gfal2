class gfal2::plugins::file::config(
)  {
  #install gfal2-plugin-file
  package{'gfal2-plugin-file':
    ensure => $gfal2::params::version,
  }
}
