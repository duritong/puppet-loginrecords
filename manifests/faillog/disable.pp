class loginrecords::faillog::disable inherits loginrecords::faillog::enable{
  Replace['loginrecords-faillog']{
    pattern   => '^FAILLOG_ENAB[[:space:]]+yes$',
    replacement => 'FAILLOG_ENAB		no',
  }
  Line['loginrecords-faillog']{
    line  => 'FAILLOG_ENAB		no',
  }
}
