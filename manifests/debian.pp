class loginrecords::debian inherits loginrecords::base {

    $pam_login_file  = '/etc/pam.d/login'
    $login_defs_file = '/etc/login.defs'
    $btmp_file       = '/var/log/btmp'
    $utmp_file       = '/var/run/utmp'
    $wtmp_file       = '/var/log/wtmp'

    if $disable_btmp {
        include loginrecords::btmp::disable
    } else {
        include loginrecords::btmp::enable
    }

    if $disable_faillog {
        include loginrecords::faillog::disable
    } else {
        include loginrecords::faillog::enable
    }

    if $disable_lastlog {
        include loginrecords::lastlog::disable
    }

    if $disable_utmp {
        include loginrecords::utmp::disable
    } else {
        include loginrecords::utmp::enable
    }

    if $disable_wtmp {
        include loginrecords::wtmp::disable
    } else {
        include loginrecords::wtmp::enable
    }

}
