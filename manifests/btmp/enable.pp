# manage the btmp file
class loginrecords::btmp::enable(
  $btmp_file = '/var/log/btmp'
){
  file{$loginrecords::btmp::enable::btmp_file:
    ensure  => 'present',
    owner   => 'root',
    group   => 'utmp',
    mode    => '0660';
  }
}
