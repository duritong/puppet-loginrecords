class loginrecords::ramrun::disable inherits loginrecords::ramrun::enable {

  Augeas { "ramdisk-on-var-run":
    changes => "set RAMRUN yes",
  }

}
