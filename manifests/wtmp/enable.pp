# manage wtmp
class loginrecords::wtmp::enable(
  $wtmp_file = '/var/log/wtmp'
){
  file{$loginrecords::wtmp::enable::wtmp_file:
    ensure  => 'present',
    owner   => 'root',
    group   => 'utmp',
    mode    => '0664';
  }
}
