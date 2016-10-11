class gfal2::plugins::xrootd::params {
  $copy_checksum_type = hiera('gfal2::plugins::xrootd::params::copy_checksum_type', 'ADLER32')
  $copy_checksum_mode = hiera('gfal2::plugins::xrootd::params::copy_checksum_mode','end2end')
}

