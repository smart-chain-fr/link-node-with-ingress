set -ex

if [ ! -e /var/tezos/node/data/context/store.dict ]
then
  printf "No store in data dir found, probably initial start, doing nothing."
  exit 0
fi
# rm -rf /var/tezos/node/data/*
octez-node upgrade storage --config /etc/tezos/config.json
