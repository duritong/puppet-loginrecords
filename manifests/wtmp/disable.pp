class loginrecords::wtmp::disable inherits loginrecords::wtmp::enable {
  File[$wtmp_filer]{
    ensure => 'absent'
  }
}
