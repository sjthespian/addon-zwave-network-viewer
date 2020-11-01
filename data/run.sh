#!/usr/bin/env bashio

# Validate config
err=0
if ! bashio::config.has_value 'token'; then
  bashio::log.fatal
  bashio::log.fatal "Add-on configuration is incomplete!"
  bashio::log.fatal
  bashio::log.fatal "No token value was specified. You must create a long-lived"
  bashio::log.fatal "access token and add it to the configuration" 
  bashio::log.fatal
  err=1
fi
if ! bashio::config.has_value 'haurl'; then
  bashio::log.fatal
  bashio::log.fatal "Add-on configuration is incomplete!"
  bashio::log.fatal
  bashio::log.fatal "The HA URL value was not specified. You must add the URL"
  bashio::log.fatal "for your Home Assistant server to the configuration"
  bashio::log.fatal
  err=1
fi
if [ "$err" != 0 ]; then
  bashio::exit.nok
fi

# Get config values
export HA_URL=$(bashio::config 'haurl')
export HA_URL=$(echo $HA_URL | sed 's/\/$//')	# strip trailing slash
export HA_TOKEN=$(bashio::config 'token')
export SSL_KEY=""
export SSL_CERTIFICATE=""
# Only enable ssl support if ssl is enabled
if [ $(bashio::config 'ssl') == "true" ]; then
  bashio::log.info "Enabling SSL support"
  export SSL_KEY=/ssl/$(bashio::config 'keyfile')
  export SSL_CERTIFICATE=/ssl/$(bashio::config 'certfile')
  # Output a warning if the cert or keyfile is not found
  if [ ! -f $SSL_KEY -o ! -f $SSL_CERTIFICATE ]; then
    bashio::log.warn "SSL certificate and/or key not found, disabling SSL support"
  fi
fi
export SERVER_PORT=$(bashio::addon.port 6123)
export DEBUG=$(bashio::config 'debug')
export LOCAL=false

bashio::log.info "Starting HA Z-Wave Network Viewer on port ${SERVER_PORT}"
python3 webserver.py
