# do not log any faillog
class loginrecords::faillog::disable inherits loginrecords::faillog::enable{
  Replace['loginrecords-faillog']{
    pattern     => '^FAILLOG_ENAB[[:space:]]+yes$',
    replacement => "FAILLOG_ENAB\tno",
  }
  Line['loginrecords-faillog']{
    line  => "FAILLOG_ENAB\tno",
  }
}
