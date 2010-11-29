class loginrecords::utmp::enable {
    file { "$utmp_file":
        ensure => 'present', mode => 660, owner => 'root', group => 'utmp',
    }
}
