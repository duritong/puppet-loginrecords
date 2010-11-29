class loginrecords::wtmp::enable {
    file { "$wtmp_file":
        ensure => 'present', mode => 664, owner => 'root', group => 'utmp',
    }
}
