#!/bin/sh

set -e

mkdir -p /run/nsd
s6-envuidgid abc s6-chown -U /var/db/nsd
s6-envuidgid abc s6-chown -U /run/nsd
