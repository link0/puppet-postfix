
class postfix::params {
    $package_name     = 'postfix'
    $package_manage   = true
    $package_ensure   = installed

    $package_mysql_name   = 'postfix-mysql'
    $package_mysql_manage = true
    $package_mysql_ensure = installed

    $service_name   = 'postfix'
    $service_manage = true
    $service_ensure = running
    $service_enable = true
}
