sibcoin masternode for docker
=============================

Docker image that runs the sibcoin daemon which can be turned into a masternode with the correct configuration.

Quick Start
-------------

```shell
docker run \
  -d \
  -e PORT=${PORT}\
  -e EXTERNALIP=xx.xx.xx.xx \
  -e MASTERNODEGENKEY=${MASTERNODEGENKEY} \
  -v </some/directory>:/home/sibcoin \
  --name=sibcoin \
  respectablewizard/sibcoin
```

## Advanced configuration ##

``` shell
export PORT=9214
docker run \
  -d \
  -e PORT=${PORT}\
  -e EXTERNALIP=xx.xx.xx.xx \
  -e MASTERNODEGENKEY=${MASTERNODEGENKEY} \
  -v </some/directory>:/home/sibcoin \
  --name=sibcoin \
  respectablewizard/sibcoin
```

You can also change the default RPC port with -e RPCPORT
This will create the folder `.sibcoin` in `/some/directory` with a bare `sibcoin.conf`. You might want to edit the `sibcoin.conf` before running the container because with the bare config file it doesn't do much, it's basically just an empty wallet.

TODO: Enable RPC monitoring on port 1915
