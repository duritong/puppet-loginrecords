# manage the lastlog logging of pam
class loginrecords::lastlog::enable(
  $pam_login_file = '/etc/pam.d/login'
){
  file_line{ 'loginrecords-lastlog':
    path  => $pam_login_file,
    match => '^.*session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
    line  => 'session  optional   pam_lastlog.so',
  }
  file{ '/var/log/lastlog':
    ensure => present,
    owner  => root,
    group  => utmp,
    mode   => '0664';
  }
}
