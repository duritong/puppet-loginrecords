# ensure that btmp is not on the system
class loginrecords::btmp::disable inherits loginrecords::btmp::enable {
  File[$loginrecords::btmp::enable::btmp_file]{
    ensure => 'absent',
    backup => false,
  }
}

