# disable lastlog loggin of pam
class loginrecords::lastlog::disable inherits loginrecords::lastlog::enable {
  File_line['loginrecords-lastlog']{
    line  => '#session  optional   pam_lastlog.so',
  }
  File['/var/log/lastlog']{
    ensure => absent,
    backup => false,
  }
}
