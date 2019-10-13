#!/bin/bash
set -x

USER=sibcoin
chown -R ${USER} /usr/local/bin/1x2*
chown -R ${USER} ${HOME}
exec gosu ${USER} "$@"