class loginrecords::wtmp::disable inherits loginrecords::wtmp::enable {
  File[$wtmp_file]{
    ensure => 'absent'
  }
}
