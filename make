#!/bin/bash

PROTO_QUIC_ROOT=`pwd`/src
echo $PROTO_QUIC_ROOT

cd $PROTO_QUIC_ROOT
gn gen out/Default && ninja -C out/Default quic_client quic_server net_unittests

