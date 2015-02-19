class sssd::install (

) {
    if $sssd::packages {
        package{ $sssd::packages:
            ensure => $sssd::version
        }
    }

}

