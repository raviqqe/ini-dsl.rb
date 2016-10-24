#!/usr/bin/env ruby

require 'ini-dsl'


conf = ini_file do
  events do
    worker_connections 1024
  end

  http do
    include 'mime.types'
    default_type 'application/octet-stream'

    sendfile :on
    keepalive_timeout 65
  end

  server do
    listen 443
    server_name :localhost

    ssl_certificate 'cert.pem'
    ssl_certificate_key 'key.pem'
    ssl_session_cache 'shared:SSL:1m'
    ssl_session_timeout '5m'
  end

  location do
    root 'html'
    index 'index.html'
  end
end

puts conf
