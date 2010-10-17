class loginrecords {

    case $kernel {
        "Linux": {
            case  $operatingsystem {
                "debian", "ubuntu": { include loginrecords::debian }
                default:            { include loginrecords::base   }
            }
        }
        default: {
            err("Kernel $kernel is not supported.")
        }
    }

}
