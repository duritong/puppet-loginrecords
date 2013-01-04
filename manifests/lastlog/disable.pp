# disable lastlog loggin of pam
class loginrecords::lastlog::disable inherits loginrecords::lastlog::enable {
  File_line['loginrecords-lastlog']{
    match => '^session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
    line  => '#session  optional   pam_lastlog.so',
  }
  File['/var/log/lastlog']{
    ensure => absent,
    backup => false,
  }
}
