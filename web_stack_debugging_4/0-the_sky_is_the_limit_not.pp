# debug apache 500 server error

exec { 'new-state':
    command  => 'sed -i "s/ULIMIT=\"-n [0-9]*\"/ULIMIT=\"-n 4096\"/g" /etc/default/nginx',
    provider => 'shell',
    notify   => service['nginx']
}
