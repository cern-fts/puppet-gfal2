class gfal2::params {
  $enable_all    = hiera('gfal2::params::enable_all', false)
  $enable_http   = hiera('gfal2::params::enable_http', true)
  $enable_gsiftp = hiera('gfal2::params::enable_gsiftp', true)
  $enable_srm    = hiera('gfal2::params::enable_srm', true)
  $enable_xrootd = hiera('gfal2::params::enable_xrootd', false)
  $enable_rfio   = hiera('gfal2::params::enable_rfio', false)
  $enable_dcap   = hiera('gfal2::params::enable_dcap', false)
  $enable_file   = hiera('gfal2::params::enable_file', false)
  $enable_lfc    = hiera('gfal2::params::enable_lfc', false)
  $enable_mock   = hiera('gfal2::params::enable_mock', false)

  #gfal2_core params
  $namespace_timeout = hiera('gfal2::params::namespace_timout', 300)
  $checksum_timeout  = hiera('gfal2::params::checksum_timout', 1800)

  #bdii params
  $bdii_enabled    =  hiera('gfal2::params::bdii_enabled', true)
  $lcg_gfal_infoys =  hiera('gfal2::params::lcg_gfal_infoys', 'lcg-bdii.cern.ch:2170')
  $bdii_cache_file =  hiera('gfal2::params::bdii_cach_file', '/var/lib/fts3/bdii_cache.xml')

  $install_gfal2_util = hiera('gfal2::params::install_gfal2_util', false)

  #version of gfal2 to install, default is present as the one currectly avaulble on the repo
  $version         = hiera('gfal2::params::version', 'present')
}

