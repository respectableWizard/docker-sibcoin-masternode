#!/bin/bash
set -x

USER=sibcoin
chown -R ${USER} /usr/local/bin/sibcoin*
chown -R ${USER} ${HOME}
exec gosu ${USER} "$@"