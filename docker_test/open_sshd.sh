#!/bin/bash

docker exec -it s0 /usr/sbin/sshd
docker exec -it s1 /usr/sbin/sshd
docker exec -it s2 /usr/sbin/sshd
docker exec -it s3 /usr/sbin/sshd

docker exec -it c0 /usr/sbin/sshd
docker exec -it c1 /usr/sbin/sshd
docker exec -it c2 /usr/sbin/sshd
docker exec -it c3 /usr/sbin/sshd

docker exec -it test_env /usr/sbin/sshd

