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

  if $loginrecords::protect_utmp {
    class{'loginrecords::utmp::protect': }
  } else {
    class{'loginrecords::utmp::unprotect': }
  }

  if $loginrecords::disable_wtmp {
    class{'loginrecords::wtmp::disable': }
  } else {
    class{'loginrecords::wtmp::enable': }
  }

  if $loginrecords::ramdisk_on_var_run {
    class{'loginrecords::ramrun::enable': }
  } else {
    case $lsbdistrelease {
      'lenny','squeeze': { class{'loginrecords::ramrun::disable': } }
      default: { err("Disabling RAMRUN is not supported since Wheezy") }
    }
  }

}
