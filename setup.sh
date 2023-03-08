#!/usr/bin/env bash

version="3.3.4"

wget https://dlcdn.apache.org/hadoop/common/hadoop-${version}/hadoop-${version}.tar.gz
tar -xf hadoop-${version}.tar.gz -C ./hadoop --strip-components=1
rm hadoop-${version}.tar.gz ./hadoop/sbin/*.cmd
cp ./etc/hadoop/* ./hadoop/etc/hadoop
docker build . -t hadoop
