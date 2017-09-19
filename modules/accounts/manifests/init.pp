
class accounts ($username) {
if $::operatingsystem == 'centos' {
$groups = 'wheel'
}
elsif $::operatingsystem == 'debian' {
$groups = 'admin'
}
else {
fail( "This module doesn't support ${::operatingsystem}." )
}
notice ( "Groups for user ${user_name} set to ${groups}" )
}
