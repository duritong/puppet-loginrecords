class loginrecords::btmp::disable {
    file { "$btmp_file": ensure => 'absent' }
}

class loginrecords::btmp::enable {
    file { "$btmp_file":
        ensure => 'present', mode => 660, owner => 'root', group => 'utmp',
    }
}
