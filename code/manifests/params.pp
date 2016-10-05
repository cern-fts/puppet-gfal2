class gfal2::params {
  $enable_http =  hiera('gfal2::params::enable_http', true)
  $enable_gsiftp = hiera('gfal2::params::enable_gsiftp', true)
  $enable_srm = hiera('gfal2::params::enable_srm', true)
  $enable_xrootd = hiera('gfal2::params::enable_xrootd', false)
  $enable_rfio =  hiera('gfal2::params::enable_rfio', false)
  $enable_dcap =  hiera('gfal2::params::enable_dcap', false)
  $enable_file = hiera('gfal2::params::enable_file', false)
  $enable_lfc = hiera('gfal2::params::enable_lfc', false)
  $enable_mock = hiera('gfal2::params::enable_mock', false)

}


