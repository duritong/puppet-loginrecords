class loginrecords::wtmp::enable(
  $wtmp_file = '/var/log/wtmp'
){
  file{$wtmp_file:
    ensure => 'present',
    owner => 'root', group => 'utmp', mode => 664;
  }
}
