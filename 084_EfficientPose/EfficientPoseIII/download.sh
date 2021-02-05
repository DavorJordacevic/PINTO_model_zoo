#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=18hgU2kr3ga6sxHC-IgL2Z8pyrSUFd3Oi" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=18hgU2kr3ga6sxHC-IgL2Z8pyrSUFd3Oi" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
