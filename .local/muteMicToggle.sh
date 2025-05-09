#!/usr/bin/env bash

source="USB PnP Audio Device Mono"
deviceID=$(pamixer --list-sources | grep "${source}" | awk '{print $1}')

pamixer --source "${deviceID}" -t
