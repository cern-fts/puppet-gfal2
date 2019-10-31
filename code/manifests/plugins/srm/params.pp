class gfal2::plugins::srm::params {
  $operation_timeout        = hiera('gfal2::plugins::srm::params::operation_timeout', 180)
  $conn_timeout             = hiera('gfal2::plugins::srm::params::conn_timeout', 60)
  $request_lifetime         = hiera('gfal2::plugins::srm::params::request_lifetime', 3600)
  $copy_checksum_type       = hiera('gfal2::plugins::srm::params::copy_checksum_type', 'ADLER32')
  $turl_protocols           = hiera('gfal2::plugins::srm::params::turl_protocols','gsiftp;rfio;gsidcap;dcap;kdcap')
  $turl_3rd_party_protocols = hiera('gfal2::plugins::srm::params::turl_3rd_party_protocols', 'gsiftp')
  $keep_alive               = hiera('gfal2::plugins::srm::params::keep_alive',true)
  $copy_fail_nearline       = hiera('gfal2::plugins::srm::params::copy_fail_nearline',false)
}
