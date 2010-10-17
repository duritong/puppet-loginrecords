class loginrecords::debian inherits loginrecords::base {

    $pam_login_file  = '/etc/pam.d/login'
    $login_defs_file = '/etc/login.defs'

    if $disable_faillog {
        include loginrecords::faillog::disable
    }
    else {
        include loginrecords::faillog::enable
    }

    if $disable_lastlog {
        include loginrecords::lastlog::disable
    }

}
