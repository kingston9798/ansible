ARG BASE_IMAGE=alpine:edge
FROM ${BASE_IMAGE}

ARG ANSIBLE_VERSION=2.7.0-r1

RUN apk add --update ansible openssh-client sshpass && \
    rm -rf /var/cache/apk/*

COPY ./ansible.cfg .
COPY ./files .

#ENTRYPOINT ["/usr/bin/ansible-playbook"]
