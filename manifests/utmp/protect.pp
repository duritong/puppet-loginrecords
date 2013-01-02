# make the unprotect file protected from global read
class loginrecords::utmp::protect inherits loginrecords::utmp::unprotect {
  File[$loginrecords::utmp::protect::utmp_file]{
    mode => 660,
  }
}
