#!/bin/ash

set -eu

[[ $# == 2 ]] || echo "Usage: forward-port.sh <src> <dst>"
src=$1
dst=$2

exec socat -dddd TCP-LISTEN:${src},reuseaddr,fork TCP:${dst}
