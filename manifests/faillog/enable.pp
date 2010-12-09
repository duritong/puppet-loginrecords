class loginrecords::faillog::enable(
  $login_defs_file = '/etc/login.defs'
) {
  replace{'loginrecords-faillog':
    file    => $login_defs_file,
    pattern   => '^FAILLOG_ENAB[[:space]]+no$',
    replacement => 'FAILLOG_ENAB		yes',
  }
  line{'loginrecords-faillog':
    file  => $login_defs_file,
    line  => 'FAILLOG_ENAB		yes',
    require => Replace['loginrecords-faillog'],
  }
}
