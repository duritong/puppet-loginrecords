# manage faillog logging
class loginrecords::faillog::enable(
  $login_defs_file = '/etc/login.defs'
) {
  replace{'loginrecords-faillog':
    file        => $loginrecords::faillog::enable::login_defs_file,
    pattern     => '^FAILLOG_ENAB[[:space]]+no$',
    replacement => "FAILLOG_ENAB\tyes",
  }
  line{'loginrecords-faillog':
    file    => $loginrecords::faillog::enable::login_defs_file,
    line    => "FAILLOG_ENAB\tyes",
    require => Replace['loginrecords-faillog'],
  }
}
