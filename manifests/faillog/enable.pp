# manage faillog logging
class loginrecords::faillog::enable(
  $login_defs_file = '/etc/login.defs'
) {
  file_line{'loginrecords-faillog':
    path  => $loginrecords::faillog::enable::login_defs_file,
    match => '^FAILLOG_ENAB',
    line  => "FAILLOG_ENAB\tyes",
  }
}
