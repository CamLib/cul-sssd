class sssd (
    $enable     = undef,
    $start      = undef,
    $packages   = undef,
    $version    = undef,
) {
    class{'sssd::install': } ->
    class{'sssd::config': } ~>
    class{'sssd::service': } ->
    Class["sssd"]
}
