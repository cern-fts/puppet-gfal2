class gfal2::plugins::http::params {
  $enable_remote_copy = hiera('gfal2::plugins::http::params::enable_remote_copy', true)
  $enable_stream_copy = hiera('gfal2::plugins::http::params::enable_stream_copy', true)
  $enable_fallback_tpc__copy = hiera('gfal2::plugins::http::params::enable_fallback_tpc_copy', true)
  $default_copy_mode  = hiera('gfal2::plugins::http::params::defaut_copy_mode', '3rd pull') 
  $insecure           = hiera('gfal2::plugins::http::params::insecure', false)
  $log_level          = hiera('gfal2::plugins::http::params::log_level', 0)
  $keep_alive         = hiera('gfal2::plugins::http::params::keep_alive', true)
  $s3_secret_key      = hiera('gfal2::plugins::http::params::s3_secret_key', undef)
  $s3_access_key      = hiera('gfal2::plugins::http::params::s3_access_key', undef)
  $s3_token           = hiera('gfal2::plugins::http::params::s3_token', undef)
  $s3_region          = hiera('gfal2::plugins::http::params::s3_region', undef)
  $gcloud_json_auth_file = hiera('gfal2::plugins::http::params::gcloud_json_auth_file', undef)
  $gcloud_json_auth_path = hiera('gfal2::plugins::http::params::gcloud_json_auth_path', undef)
}

