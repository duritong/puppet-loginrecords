class loginrecords::utmp::enable(
  $utmp_file = '/var/run/utmp'
){
  file {$utmp_file:
    ensure => 'present',
    owner => 'root', group => 'utmp', mode => 660;
  }
}
