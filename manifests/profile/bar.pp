# rpdemo::profile::bar
class rpdemo::profile::bar {
  class {'apache':
    default_vhost => false,

  }

  apache::vhost { 'vagrant.localdomain':
    port    => '80',
    docroot => '/srv/http/',
  }

  file {'/srv/http/index.html':
    owner   => 'apache',
    group   => 'apache',
    mode    => 0644,
    content => '<html>
    <head>
    </head>
    <body>
      <h1> Apache running on the virtualmachine, accessible via forwarded ports! </h1>
    </body>
  </html>',

  }

}