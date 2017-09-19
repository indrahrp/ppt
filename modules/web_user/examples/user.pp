
web_user::user {'shleo':}
web_user::user {'rafli':}

web_user::user { 'frodo':
content => 'Custom Content!',
password => pw_hash('sting', 'SHA-512', 'mysalt'),
}
