class sssd (
    $enable     = true,
    $start      = true,
    $packages   = [],
    $version    = 'latest',
    $domain = '',
    
) {
    class{'sssd::install': } ->
    class{'sssd::config': } ~>
    class{'sssd::service': } ->
    Class["sssd"]
}
