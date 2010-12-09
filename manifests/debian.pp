class loginrecords::debian inherits loginrecords::base {

  if $loginrecords::disable_btmp {
    class{'loginrecords::btmp::disable': }
  } else {
    class{'loginrecords::btmp::enable': }
  }

  if $loginrecords::disable_faillog {
    class{'loginrecords::faillog::disable': }
  } else {
    class{'loginrecords::faillog::enable': }
  }

  if $loginrecords::disable_lastlog {
    class{'loginrecords::lastlog::disable': }
  } else {
    class{'loginrecords::lastlog::enable': }
  }

  if $loginrecords::disable_utmp {
    class{'loginrecords::utmp::disable': }
  } else {
    class{'loginrecords::utmp::enable': }
  }

  if $loginrecords::disable_wtmp {
    class{'loginrecords::wtmp::disable': }
  } else {
    class{'loginrecords::wtmp::enable': }
  }

}
