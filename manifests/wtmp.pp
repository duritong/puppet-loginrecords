class loginrecords::wtmp::disable {
    file { "$wtmp_file": ensure => 'absent' }
}

class loginrecords::wtmp::enable {
    file { "$wtmp_file": ensure => 'present' }
}
