#!/bin/bash

function scp_pub {
    R="$1"
    H1="$2"
    H2="$3"
    H3="$4"
    scp  ~/.ssh/id_rsa.pub root@"$H1":~/.ssh/authorized_keys_backup/id_rsa.pub."$R"
    scp  ~/.ssh/id_rsa.pub root@"$H2":~/.ssh/authorized_keys_backup/id_rsa.pub."$R"
    scp  ~/.ssh/id_rsa.pub root@"$H3":~/.ssh/authorized_keys_backup/id_rsa.pub."$R"
}

case $1 in
    s0)  scp_pub s0 s1 s2 s3
    ;;
    s1)  scp_pub s1 s0 s2 s3
    ;;
    s2)  scp_pub s2 s1 s0 s3
    ;;
    s3)  scp_pub s3 s1 s2 s0
    ;;
    *)  echo 'error arg'
    ;;
esac