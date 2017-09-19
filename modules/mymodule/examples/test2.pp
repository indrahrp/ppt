

exec { 'tar -xf /var/tmp/important.tar':
  cwd     => '/var/tmp',
  creates => '/var/tmp/myfile',
  path    => ['/usr/bin', '/usr/sbin',],
  onlyif => 'test -f /tmp/file2',
}

exec { 'touch /tmp/tc1':
path => ['/usr/bin/','/usr/sbin/'],
subscribe => Exec['tar -xf /var/tmp/important.tar'],
refreshonly => true,
unless => 'test -f /tmp/tc1'
}



