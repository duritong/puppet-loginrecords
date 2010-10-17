class loginrecords::debian inherits loginrecords::base {

    $pam_login_file  = '/etc/pam.d/login'
    $login_defs_file = '/etc/login.defs'
    $btmp_file       = '/var/log/btmp'
    $wtmp_file       = '/var/log/wtmp'

    if $disable_btmp {
        include loginrecords::btmp::disable
    }
    else {
        include loginrecords::btmp::enable
    }

    if $disable_faillog {
        include loginrecords::faillog::disable
    }
    else {
        include loginrecords::faillog::enable
    }

    if $disable_lastlog {
        include loginrecords::lastlog::disable
    }

    if $disable_wtmp {
        include loginrecords::wtmp::disable
    }
    else {
        include loginrecords::wtmp::enable
    }

}
