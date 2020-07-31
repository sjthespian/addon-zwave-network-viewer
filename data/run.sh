#!/usr/bin/env bashio

# Build config file from options
CONFIG_PATH=/data/options.json

# Get config valuesj
#export HA_TOKEN="$(bashio::config 'token')"
export HA_TOKEN=${SUPERVISOR_TOKEN}
export HA_URL="http://supervisor/core"

# Port 
PORT=6123

bashio::log.info "Start HA Z-Wave Network Viewer"
python3 webserver.py
