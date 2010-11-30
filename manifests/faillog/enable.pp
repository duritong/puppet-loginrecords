class loginrecords::faillog::enable {
    replace { 'loginrecords-faillog-enable':
        file        => $login_defs_file,
        pattern     => '^FAILLOG_ENAB[[:space]]+no$',
        replacement => 'FAILLOG_ENAB		yes',
    }
    line { 'loginrecords-faillog-enable':
        file    => $login_defs_file,
        line    => 'FAILLOG_ENAB		yes',
        require => Replace['loginrecords-faillog-enable'],
    }
}
