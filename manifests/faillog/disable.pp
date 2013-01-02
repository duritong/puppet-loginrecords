# do not log any faillog
class loginrecords::faillog::disable inherits loginrecords::faillog::enable{
  File_line['loginrecords-faillog']{
    line  => "FAILLOG_ENAB\tno",
  }
}
