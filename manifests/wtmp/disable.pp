class loginrecords::wtmp::disable {
    file { "$wtmp_file": ensure => 'absent' }
}
