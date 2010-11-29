class loginrecords::utmp::disable {
    file { "$utmp_file": ensure => 'absent' }
}
