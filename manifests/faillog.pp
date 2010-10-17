class loginrecords::faillog::enable {
    replace { 'loginrecords-faillog-enable':
        file    => $login_defs_file,
        pattern => '^FAILLOG_ENAB\w+no$',
        replace => 'FAILLOG_ENAB		yes',
    }
    append_if_no_such_line { 'loginrecords-faillog-enable':
        file    => $login_defs_file,
        line    => 'FAILLOG_ENAB		yes',
        require => Replace['loginrecords-faillog-enable'],
    }
}

class loginrecords::faillog::disable {
        replace { 'loginrecords-faillog-disable':
            file => $login_defs_file,
            pattern => '^FAILLOG_ENAB\w+yes$',
            replace => 'FAILLOG_ENAB		no',
        }
        append_if_no_such_line { 'loginrecords-faillog-disable':
            file    => $login_defs_file,
            line    => 'FAILLOG_ENAB		no',
            require => Replace['loginrecords-faillog-disable'],
        }
}
