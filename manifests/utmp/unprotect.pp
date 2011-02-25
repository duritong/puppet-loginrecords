class loginrecords::utmp::unprotect(
  $utmp_file = '/var/run/utmp'
){
  file{$utmp_file:
    ensure => 'present',
    owner => 'root', group => 'utmp', mode => 664;
  }
}
