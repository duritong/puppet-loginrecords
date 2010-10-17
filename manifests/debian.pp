class loginrecords::debian inherits loginrecords::base {

    $login_defs_file = '/etc/login.defs'

    if $disable_faillog {
        include loginrecords::faillog::disable
    }
    else {
        include loginrecords::faillog::enable
    }

}
