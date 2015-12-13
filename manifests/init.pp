
class postfix (

    $package_name     = $postfix::params::package_name,
    $package_manage   = $postfix::params::package_manage,
    $package_ensure   = $postfix::params::package_ensure,

    $package_mysql_name   = $postfix::params::package_mysql_name,
    $package_mysql_manage = $postfix::params::package_mysql_manage,
    $package_mysql_ensure = $postfix::params::package_mysql_ensure,

    $service_name   = $postfix::params::service_name,
    $service_manage = $postfix::params::service_manage,
    $service_ensure = $postfix::params::service_ensure,
    $service_enable = $postfix::params::service_enable,

) inherits postfix::params {

  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'postfix::begin': } ->
  class { '::postfix::install': } ->
  class { '::postfix::config': } ~>
  class { '::postfix::service': } ->
  anchor { 'postfix::end': }

}
