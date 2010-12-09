class loginrecords::lastlog::disable(
  $pam_login_file = '/etc/pam.d/login'
){
  replace { 'loginrecords-lastlog-disable':
    file    => $pam_login_file,
    pattern   => '^session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
    replacement => '#session  optional   pam_lastlog.so',
  }
  file{'/var/log/lastlog':
    content => '',
    owner => root, group => utmp, mode => 0664;
  } 
}
