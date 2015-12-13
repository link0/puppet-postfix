
class postfix (

    $package_name     = $postfix::params::package_name,
    $package_manage   = $postfix::params::package_manage,
    $package_ensure   = $postfix::params::package_ensure,

) inherits postfix::params {

  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'postfix::begin': } ->
  class { '::postfix::install': } ->
  class { '::postfix::config': } ~>
  class { '::postfix::service': } ->
  anchor { 'postfix::end': }

}
