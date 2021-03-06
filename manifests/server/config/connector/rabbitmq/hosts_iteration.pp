# private define
# $name will be an index into the $mcollective::middleware_hosts array + 1
define mcollective::server::config::connector::rabbitmq::hosts_iteration {
  if $::mcollective::middleware_ssl {
    assert_private()

    ::mcollective::server::setting { "plugin.rabbitmq.pool.${name}.ssl.key":
      value => $::mcollective::middleware_ssl_key_path,
    }
  }
}
