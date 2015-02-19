class sssd::service {

#    $ensure = $sssd::start ? {true => running, default => stopped}

#    service{"sssd":
#        ensure  => $ensure,
#        enable  => $sssd::enable,
#    }
}
