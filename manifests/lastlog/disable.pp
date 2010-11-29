class loginrecords::lastlog::disable {
    replace { 'loginrecords-lastlog-disable':
        file        => $pam_login_file,
        pattern     => '^session[[:space:]]+optional[[:space:]]+pam_lastlog.so$',
        replacement => '#session    optional   pam_lastlog.so',
    }
}
