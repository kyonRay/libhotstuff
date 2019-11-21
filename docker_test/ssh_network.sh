#!/bin/bash

rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_ecdsa_key /etc/ssh/ssh_host_ed25519_key && \
    ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && \
    ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && \
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N '' && \
    cat /etc/ssh/ssh_host_rsa_key.pub >> /key_list && \
    cat /etc/ssh/ssh_host_ecdsa_key.pub >> /key_list && \
    cat /etc/ssh/ssh_host_ed25519_key.pub >> /key_list && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && \
    /usr/sbin/sshd && \
    rm -rf ~/.ssh/id_rsa* && \
    rm -rf ~/ssh/known_hosts && \
    ssh-keygen -t rsa -f /root/.ssh/id_rsa -N ''

passwd