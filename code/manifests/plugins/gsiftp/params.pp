class gfal2::plugins::gsiftp::params {
  $gridftp_v2            = hiera('gfal2::plugins::gsiftp::params::gridftp_v2', true)
  $session_reuse         = hiera('gfal2::plugins::gsiftp::params::session_reuse', true)
  $rb_nb_stream          = hiera('gfal2::plugins::gsiftp::params::rb_nb_stream', 0)
  $copy_checksum_type    = hiera('gfal2::plugins::gsiftp::params::copy_checksum_type', 'ADLER32')
  $dcau                  = hiera('gfal2::plugins::gsiftp::params::dcau', false)
  $ipv6                  = hiera('gfal2::plugins::gsiftp::params::ipv6', true) 
  $checksum_calc_timeout = hiera('gfal2::plugins::gsiftp::params::checksum_calc_timeout', 1800) 
  $perf_marker_timeout   = hiera('gfal2::plugins::gsiftp::params::perf_marker_timeout', 360)
  $operation_timeout     = hiera('gfal2::plugins::gsiftp::params::operation_timeout',300)
  $delay_passv           = hiera('gfal2::plugins::gsiftp::params::delay_passv', true)
  $udt                   = hiera('gfal2::plugins::gsiftp::params::udt',false)
  $pasv_plugin           = hiera('gfal2::plugins::gsiftp::params::pasv_plugin',true)
  $block_size            = hiera('gfal2::plugins::gsiftp::params::block_size', 0)

}

