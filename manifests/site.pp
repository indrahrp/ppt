node puppeta.indra.com {

class { 'ntp':
servers => [
'nist-time-server.eoni.com',
'nist1-lv.ustiming.org',
'ntp-nist.ldsbc.edu'
],
disable_auth => true,
logfile => '/var/tmp/ntp.log',
}


class { 'mysql::server':
root_password => 'strongpassword',
override_options => {
'mysqld' => { 'max_connections' => '2024' }
},
}

include ::mysql::server::account_security


mysql_database { 'lvm':
ensure => present,
charset => 'utf8',
}

mysql_user { 'indrahpr@indra.com':
ensure => present,
max_connections_per_hour => 2,
}

class {'mymodule::installprog':}


}


