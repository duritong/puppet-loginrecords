class loginrecords::utmp::protect inherits loginrecords::utmp::unprotect {
  File[$utmp_file]{
    mode => 660,
  }
}
