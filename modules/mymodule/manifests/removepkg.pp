
class mymodule::removepkg {

  # remove a package but leave its config files alone
  package { 'httpd':
    ensure => ['purged']
  }

}
