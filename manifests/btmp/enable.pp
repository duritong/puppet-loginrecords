class loginrecords::btmp::enable(
  $btmp_file = '/var/log/btmp'
){
  file{$btmp_file:
    ensure => 'present',
    owner => 'root', group => 'utmp', mode => 660;
  }
}
