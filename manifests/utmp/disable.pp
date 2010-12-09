class loginrecords::utmp::disable inherits loginrecords::utmp::enable {
  File[$utmp_file]{
    ensure => 'absent'
  }
}
