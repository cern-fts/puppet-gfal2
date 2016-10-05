class gfal2 (
  $enable_http =   $gfal2::params::enable_http,
  $enable_gsiftp = $gfal2::params::enable_gsiftp,
  $enable_srm =    $gfal2::params::enable_srm,
  $enable_xrootd = $gfal2::params::enable_xrootd,
  $enable_rfio =   $gfal2::params::enable_rfio,
  $enable_dcap =   $gfal2::params::enable_dcap,
  $enable_file =   $gfal2::params::enable_file,
  $enable_lfc =    $gfal2::params::enable_lfc,
  $enable_mock =   $gfal2::params::enable_mock,
){

  include gfal2::core
  include gfal2::params
  
  
  if $enable_http {
    include gfal2::plugins::http
  }

  if $enable_gsiftp {
    include gfal2::plugins::gsiftp
  }
  
  if $enable_srm {
    include gfal2::plugins::srm
  }

  if $enable_xrootd {
    include gfal2::plugins::xrootd
  }

  if $enable_rfio {
    include gfal2::plugins::rfio
  }
  
  if $enable_dcap {
    include gfal2::plugins::dcap
  } 

  if $enable_file {
    include gfal2::plugins::file
  }

  if $enable_lfc {
    include gfal2::plugins::lfc
  }

  if $enable_lfc {
    include gfal2::plugins::mock
  }
  
}
