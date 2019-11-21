#!/bin/bash

rm -rf ~/.ssh/authorized_keys
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys_backup/id_rsa.pub.local
cat ~/.ssh/authorized_keys_backup/*.pub.* >> ~/.ssh/authorized_keys