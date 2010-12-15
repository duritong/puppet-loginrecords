class loginrecords::btmp::disable inherits loginrecords::btmp::enable {
  File[$btmp_file]{
    ensure => 'absent',
    backup => false,
  }
}

