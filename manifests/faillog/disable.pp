class loginrecords::faillog::disable {
    replace { 'loginrecords-faillog-disable':
        file        => $login_defs_file,
        pattern     => '^FAILLOG_ENAB[[:space:]]+yes$',
        replacement => 'FAILLOG_ENAB		no',
    }
    line { 'loginrecords-faillog-disable':
        file    => $login_defs_file,
        line    => 'FAILLOG_ENAB		no',
        require => Replace['loginrecords-faillog-disable'],
    }
}
