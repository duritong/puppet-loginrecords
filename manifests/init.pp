import "*.pp"

class loginrecords {

    # Default settings
    if $disable_faillog == '' {
        $disable_faillog = true
    }
    if $disable_lastlog == '' {
        $disable_lastlog = true
    }

    # Include main class
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
