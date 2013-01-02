# manage the utmp file
class loginrecords::utmp::unprotect(
  $utmp_file = '/var/run/utmp'
){
  file{$loginrecords::utmp::unprotect::utmp_file:
    ensure  => 'present',
    owner   => 'root',
    group   => 'utmp',
    mode    => '0664';
  }
}
