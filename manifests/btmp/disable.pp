class loginrecords::btmp::disable {
    file { "$btmp_file": ensure => 'absent' }
}

