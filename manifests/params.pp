
class postfix::params {
    $package_name     = 'postfix'
    $package_manage   = true
    $package_ensure   = installed

    $package_mysql_name   = 'postfix-mysql'
    $package_mysql_manage = true
    $package_mysql_ensure = installed
}
