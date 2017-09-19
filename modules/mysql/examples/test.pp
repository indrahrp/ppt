
# $arr = ['a1','a2','b3']

class {'mysql::server': 
root_group => '122',
users => {'name' => 'namalagi'},
override_options => { 
'client' => { 'port' => '3500',
	     'testopt' => 'lagi'}
}
}
