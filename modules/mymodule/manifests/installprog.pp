
class mymodule::installprog {

file { '/usr/local/apps/path/':
      source => "puppet:///modules/mymodule/apps/path",
      ensure => directory,
      replace => true,
      purge   => true,
      recurse => true;
}
}
