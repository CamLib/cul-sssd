class sssd (
    $enable     = true,
    $start      = true,
    $packages   = [],
    $version    = 'latest',
    $sss_domain = '',
    
) {
    class{'sssd::install': } ->
    class{'sssd::config': } ~>
    class{'sssd::service': } ->
    Class["sssd"]
}
