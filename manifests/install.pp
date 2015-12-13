
class postfix::install inherits postfix {
    if $postfix::package_manage {
        package { $postfix::package_name:
            ensure => $postfix::package_ensure,
        }
    }

    if $postfix::package_mysql_manage {
        package { $postfix::package_mysql_name:
            ensure => $postfix::package_mysql_ensure,
        }
    }
}
