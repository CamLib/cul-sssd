class sssd::config (
    $domain = $sssd::domain,
) {
    file {
        '/etc/realmd.conf':
            ensure => file,
            content => template('sssd/realmd.conf.erb');
        '/etc/sssd':
            ensure => directory;
        '/etc/sssd/sssd.conf':
            ensure => file,
            content => template('sssd/sssd.conf.erb'),
            require => File['/etc/sssd'];
    }
}
