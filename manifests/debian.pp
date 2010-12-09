class loginrecords::debian inherits loginrecords::base {

    $login_defs_file = '/etc/login.defs'
    $btmp_file       = '/var/log/btmp'
    $utmp_file       = '/var/run/utmp'
    $wtmp_file       = '/var/log/wtmp'

    if $loginrecords::disable_btmp {
        include loginrecords::btmp::disable
    } else {
        include loginrecords::btmp::enable
    }

    if $loginrecords::disable_faillog {
        include loginrecords::faillog::disable
    } else {
        include loginrecords::faillog::enable
    }

    if $loginrecords::disable_lastlog {
        class{'loginrecords::lastlog::disable': }
    }

    if $loginrecords::disable_utmp {
        include loginrecords::utmp::disable
    } else {
        include loginrecords::utmp::enable
    }

    if $loginrecords::disable_wtmp {
        include loginrecords::wtmp::disable
    } else {
        include loginrecords::wtmp::enable
    }

}
