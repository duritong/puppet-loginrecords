class loginrecords::lastlog::enable(
  $pam_login_file = '/etc/pam.d/login'
){
  replace{'loginrecords-lastlog':
    file => $pam_login_file,
    pattern   => '^#session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
    replacement => 'session  optional   pam_lastlog.so',
  }
  file{'/var/log/lastlog':
    ensure => present,
    owner => root, group => utmp, mode => 0664;
  }
}
