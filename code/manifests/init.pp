class gfal2 (
  $enable_all    = $gfal2::params::enable_all,
  $enable_http   = $gfal2::params::enable_http,
  $enable_gsiftp = $gfal2::params::enable_gsiftp,
  $enable_srm    = $gfal2::params::enable_srm,
  $enable_xrootd = $gfal2::params::enable_xrootd,
  $enable_rfio   = $gfal2::params::enable_rfio,
  $enable_dcap   = $gfal2::params::enable_dcap,
  $enable_file   = $gfal2::params::enable_file,
  $enable_lfc    = $gfal2::params::enable_lfc,
  $enable_mock   = $gfal2::params::enable_mock,
  $install_gfal2_util = $gfal2::params::install_gfal2_utils,
) inherits gfal2::params{

  include gfal2::core
  include gfal2::params
  
  
  if $enable_http or $enable_all{
    include gfal2::plugins::http::config
  }

  if $enable_gsiftp  or $enable_all {
    include gfal2::plugins::gsiftp::config
  }
  
  if $enable_srm  or $enable_all {
    include gfal2::plugins::srm::config
  }

  if $enable_xrootd  or $enable_all {
    include gfal2::plugins::xrootd::config
  }

  if $enable_rfio or $enable_all {
    include gfal2::plugins::rfio::config
  }
  
  if $enable_dcap or $enable_all {
    include gfal2::plugins::dcap::config
  } 

  if $enable_file or $enable_all {
    include gfal2::plugins::file::config
  }

  if $enable_lfc or $enable_all {
    include gfal2::plugins::lfc::config
  }

  if $enable_mock  or $enable_all {
    include gfal2::plugins::mock::config
  }
  
}
