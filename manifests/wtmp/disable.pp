# ensure that wtmp is not on the system
class loginrecords::wtmp::disable inherits loginrecords::wtmp::enable {
  File[$loginrecords::wtmp::enable::wtmp_file]{
    ensure => 'absent',
    backup => false,
  }
}
