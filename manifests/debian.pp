class loginrecords::debian inherits loginrecords::base {

    $login_defs_file = '/etc/login.defs'

    if $enable_faillog {
        include loginrecords::faillog::enable
    }
    else {
        include loginrecords::faillog::disable
    }

}
