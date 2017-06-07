class gfal2::plugins::mock::params {
  $max_transfer_time = hiera('gfal2::plugins::mock::params::max_transfer_time', 5)
  $min_transfer_time = hiera('gfal2::plugins::mock::params::min_transfer_time', 5)
  $signals = hiera('gfal2::plugins::mock::signals', 0)
}

