
class postfix::service inherits postfix {

  if ! ($postfix::service_ensure in [ 'running', 'stopped' ]) {
    fail('postfix::service_ensure parameter must be running or stopped')
  }

  if $postfix::service_manage == true {
    service { $postfix::service_name:
      ensure     => $postfix::service_ensure,
      enable     => $postfix::service_enable,
      name       => $postfix::service_name,
      hasstatus  => true,
      hasrestart => true,
    }
  }

}
