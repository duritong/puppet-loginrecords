class loginrecords::lastlog::disable inherits loginrecords::lastlog::enable {
  Replace['loginrecords-lastlog']{
    pattern   => '^session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
    replacement => '#session  optional   pam_lastlog.so',
  }
  File['/var/log/lastlog']{
    ensure => absent,
  }
}
