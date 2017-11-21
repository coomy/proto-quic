#!/bin/bash

PROTO_QUIC_ROOT=`pwd`/src
echo $PROTO_QUIC_ROOT

if [ $# -eq 1 -a $1=='-i' ];then
  echo "install build deps.."
  ./src/build/install-build-deps.sh
fi

cd $PROTO_QUIC_ROOT
gn gen out/Default && ninja -C out/Default quic_client quic_server net_unittests

