class gfal2::plugins::lfc::params {
  $lfc_host        = hiera('gfal2::plugins::lfc::params::lfc_host', undef)
  $lfc_conntimeout = hiera('gfal2::plugins::lfc::params::lfc_conntimeout', 15)
  $lfc_connretry   = hiera('gfal2::plugins::lfc::params::lfc_connretry', 2)
  $lfc_connretry_int   = hiera('gfal2::plugins::lfc::params::lfc_connretry_int', 1)
}

